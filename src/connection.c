
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <mbedtls/ssl.h>
#include <mbedtls/net_sockets.h>
#include <mbedtls/entropy.h>
#include <mbedtls/ctr_drbg.h>
#include "connection.h"

static void my_debug(void *ctx, int level, const char *file, int line, const char *str)
{
    ((void) level);
    fprintf( (FILE *) ctx, "%s:%04d: %s", file, line, str );
    fflush(  (FILE *) ctx  );
}

atclient_connection_ctx *atclient_connection_init(char *host, int port)
{
    atclient_connection_ctx *ctx = malloc(sizeof(atclient_connection_ctx));
    ctx->host = host;
    ctx->port = port;
    return ctx;
}

int atclient_connection_connect(atclient_connection_ctx *ctx)
{
    int ret = 1;

    ctx->server_fd = malloc(sizeof(mbedtls_net_context));
    ctx->ssl = malloc(sizeof(mbedtls_ssl_context));
    ctx->conf = malloc(sizeof(mbedtls_ssl_config));
    ctx->cacert = malloc(sizeof(mbedtls_x509_crt));
    ctx->entropy = malloc(sizeof(mbedtls_entropy_context));
    ctx->ctr_drbg = malloc(sizeof(mbedtls_ctr_drbg_context));

    mbedtls_net_init(ctx->server_fd);
    mbedtls_ssl_init(ctx->ssl);
    mbedtls_ssl_config_init(ctx->conf);
    mbedtls_x509_crt_init(ctx->cacert);
    mbedtls_entropy_init(ctx->entropy);
    mbedtls_ctr_drbg_init(ctx->ctr_drbg);

    char *host = ctx->host;
    char *portstr = malloc(sizeof(char) * 6);
    sprintf(portstr, "%d", ctx->port);

    ret = mbedtls_ctr_drbg_seed(ctx->ctr_drbg, mbedtls_entropy_func, ctx->entropy, NULL, NULL);
    printf("mbedtls_ctr_drbg_seed: %d\n", ret);

    ret = mbedtls_x509_crt_parse(ctx->cacert, ROOT_CERT, strlen(ROOT_CERT) + 1);
    printf("mbedtls_x509_crt_parse: %d\n", ret);

    ret = mbedtls_net_connect(ctx->server_fd, host, portstr, MBEDTLS_NET_PROTO_TCP);
    printf("mbedtls_net_connect: %d\n", ret);

    ret = mbedtls_ssl_config_defaults(ctx->conf, MBEDTLS_SSL_IS_CLIENT, MBEDTLS_SSL_TRANSPORT_STREAM, MBEDTLS_SSL_PRESET_DEFAULT);
    printf("mbedtls_ssl_config_defaults: %d\n", ret);

    mbedtls_ssl_conf_ca_chain(ctx->conf, ctx->cacert, NULL);
    mbedtls_ssl_conf_authmode(ctx->conf, MBEDTLS_SSL_VERIFY_REQUIRED);
    mbedtls_ssl_conf_rng(ctx->conf, mbedtls_ctr_drbg_random, ctx->ctr_drbg);
    mbedtls_ssl_conf_dbg(ctx->conf, my_debug, stdout);

    ret = mbedtls_ssl_setup(ctx->ssl, ctx->conf);
    printf("mbedtls_ssl_setup: %d\n", ret);

    ret = mbedtls_ssl_set_hostname(ctx->ssl, host);
    printf("mbedtls_ssl_set_hostname: %d\n", ret);

    mbedtls_ssl_set_bio(ctx->ssl, ctx->server_fd, mbedtls_net_send, mbedtls_net_recv, mbedtls_net_recv_timeout);

    ret = mbedtls_ssl_handshake(ctx->ssl);
    printf("mbedtls_ssl_handshake: %d\n", ret);

    ret = mbedtls_ssl_get_verify_result(ctx->ssl);
    printf("mbedtls_ssl_get_verify_result: %d\n", ret);

    ///////////////////
    // after connect
    ///////////////////

    const size_t readbuflen = 1024;
    unsigned char *readbuf;

    readbuf = malloc(sizeof(unsigned char) * readbuflen);
    ret = mbedtls_ssl_read(ctx->ssl, readbuf, readbuflen);
    printf("mbedtls_ssl_read: %d\n", ret);
    printf("readbuf: \"%s\"\n", readbuf);
    free(readbuf);

    ret = mbedtls_ssl_write(ctx->ssl, "smoothalligator\r\n", 17);
    printf("mbedtls_ssl_write: %d\n", ret);

    readbuf = malloc(sizeof(unsigned char) * readbuflen);
    ret = mbedtls_ssl_read(ctx->ssl, readbuf, readbuflen);
    printf("mbedtls_ssl_read: %d\n", ret);
    printf("readbuf: \"%s\"\n", readbuf);

    printf("ctx->ssl: %p\n", ctx->ssl);

    // ctx->saved_session = malloc(sizeof(mbedtls_ssl_session));

    // mbedtls_ssl_session_init(ctx->saved_session);

    // ret = mbedtls_ssl_get_session(ctx->ssl, ctx->saved_session);
    // printf("mbedtls_ssl_get_session: %d\n", ret);

    // ret = mbedtls_ssl_close_notify(ctx->ssl);
    // printf("mbedtls_ssl_close_notify: %d\n", ret);

    return ret;
}

int atclient_connection_send(atclient_connection_ctx *ctx, const char *data, const size_t len)
{
    printf("ctx->ssl: %p\n", ctx->ssl);
    printf("Starting send...\n");

    int ret = 1;
    const size_t readbuflen = 1024;
    unsigned char *readbuf;

    // ret = mbedtls_ssl_session_reset((mbedtls_ssl_context *) ctx->ssl);
    // printf("mbedtls_ssl_session_reset: %d\n", ret);

    // ret = mbedtls_ssl_set_session((mbedtls_ssl_context *) ctx->ssl, ctx->saved_session);
    // printf("mbedtls_ssl_set_session: %d\n", ret);

    // char *portstr = malloc(sizeof(char) * 6);
    // sprintf(portstr, "%d", ctx->port);

    // ret = mbedtls_ssl_setup((mbedtls_ssl_context *) ctx->ssl, ctx->conf);
    // printf("mbedtls_ssl_setup: %d\n", ret);

    // ret = mbedtls_ssl_set_hostname((mbedtls_ssl_context *) ctx->ssl, ctx->host);
    // printf("mbedtls_ssl_set_hostname: %d\n", ret);

    // mbedtls_ssl_set_bio((mbedtls_ssl_context *) ctx->ssl, ctx->server_fd, mbedtls_net_send, mbedtls_net_recv, mbedtls_net_recv_timeout);

    // ret = mbedtls_net_connect((mbedtls_net_context *) ctx->server_fd, ctx->host, portstr, MBEDTLS_NET_PROTO_TCP);
    // printf("mbedtls_net_connect: %d\n", ret);

    // ret = mbedtls_ssl_handshake((mbedtls_ssl_context *) ctx->ssl);
    // printf("mbedtls_ssl_handshake: %d\n", ret);

    // ret = mbedtls_ssl_read((mbedtls_ssl_context *) ctx->ssl, readbuf, readbuflen);
    // printf("mbedtls_ssl_read: %d\n", ret);
    // printf("readbuf: \"%s\"\n", readbuf);
    // free(readbuf);

    ret = mbedtls_ssl_write((mbedtls_ssl_context *) ctx->ssl, "smoothalligator\r\n", 17);
    printf("mbedtls_ssl_write: %d\n", ret);

    readbuf = malloc(sizeof(unsigned char) * readbuflen);
    ret = mbedtls_ssl_read((mbedtls_ssl_context *) ctx->ssl, readbuf, readbuflen);
    printf("mbedtls_ssl_read: %d\n", ret);
    printf("readbuf: \"");
    for(int i = 0; i < ret; i++) {
        printf("%c", readbuf[i]);
    }
    printf("\"\n");

    return ret;
}


void atclient_connection_free(atclient_connection_ctx *ctx)
{
    free(ctx->host);
    free(ctx->server_fd);
    free(ctx->entropy);
    free(ctx->ctr_drbg);
    free(ctx->ssl);
    free(ctx->conf);
    free(ctx->cacert);
    free(ctx);
}