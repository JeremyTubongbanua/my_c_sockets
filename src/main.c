
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <mbedtls/ssl.h>
#include <mbedtls/net_sockets.h>
#include <mbedtls/entropy.h>
#include <mbedtls/ctr_drbg.h>
#include <pthread.h>
#include "connection.h"

static void my_debug(void *ctx, int level, const char *file, int line, const char *str)
{
    ((void) level);
    fprintf( (FILE *) ctx, "%s:%04d: %s", file, line, str );
    fflush(  (FILE *) ctx  );
}

int x_write(mbedtls_ssl_context *ssl)
{
    int ret = 1;
    const unsigned char *buf = "smoothalligator\r\n";
    size_t len = strlen(buf);
    size_t written = 0;
    while (written < len) {
        ret = mbedtls_ssl_write(ssl, buf + written, len - written);
        if (ret <= 0) {
            if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
                printf("mbedtls_ssl_write: %d\n", ret);
                return ret;
            }
        } else {
            written += ret;
        }
    }
    return 0;
}

int x_read(mbedtls_ssl_context *ssl)
{
    int ret = 1;
    unsigned char *readbuf;
    const size_t readbuflen = 1024;
    readbuf = malloc(sizeof(unsigned char) * readbuflen);
    ret = mbedtls_ssl_read(ssl, readbuf, readbuflen);
    printf("mbedtls_ssl_read: %d\n", ret);
    printf("readbuf: \"%s\"\n", readbuf);
    free(readbuf);
    return 0;
}

int main(int argc, char **argv)
{
    int ret = 1;

    // atclient_connection_ctx *ctx = atclient_connection_init(HOST, PORT);

    // char *hoststr = ctx->host;
    // char *portstr = malloc(sizeof(char) * 6);
    // sprintf(portstr, "%d", PORT);

    // ctx->server_fd = malloc(sizeof(mbedtls_net_context));
    // ctx->ssl = malloc(sizeof(mbedtls_ssl_context));
    // ctx->conf = malloc(sizeof(mbedtls_ssl_config));
    // ctx->cacert = malloc(sizeof(mbedtls_x509_crt));
    // ctx->entropy = malloc(sizeof(mbedtls_entropy_context));
    // ctx->ctr_drbg = malloc(sizeof(mbedtls_ctr_drbg_context));

    // mbedtls_net_init(ctx->server_fd);
    // mbedtls_ssl_init(ctx->ssl);
    // mbedtls_ssl_config_init(ctx->conf);
    // mbedtls_x509_crt_init(ctx->cacert);
    // mbedtls_entropy_init(ctx->entropy);
    // mbedtls_ctr_drbg_init(ctx->ctr_drbg);

    // ret = mbedtls_ctr_drbg_seed(ctx->ctr_drbg, mbedtls_entropy_func, ctx->entropy, NULL, NULL);
    // printf("mbedtls_ctr_drbg_seed: %d\n", ret);

    // ret = mbedtls_x509_crt_parse(ctx->cacert, ROOT_CERT, strlen(ROOT_CERT) + 1);
    // printf("mbedtls_x509_crt_parse: %d\n", ret);

    // ret = mbedtls_net_connect(ctx->server_fd, hoststr, portstr, MBEDTLS_NET_PROTO_TCP);
    // printf("mbedtls_net_connect: %d\n", ret);

    // ret = mbedtls_ssl_config_defaults(ctx->conf, MBEDTLS_SSL_IS_CLIENT, MBEDTLS_SSL_TRANSPORT_STREAM, MBEDTLS_SSL_PRESET_DEFAULT);
    // printf("mbedtls_ssl_config_defaults: %d\n", ret);

    // mbedtls_ssl_conf_ca_chain(ctx->conf, ctx->cacert, NULL);
    // mbedtls_ssl_conf_authmode(ctx->conf, MBEDTLS_SSL_VERIFY_REQUIRED);
    // mbedtls_ssl_conf_rng(ctx->conf, mbedtls_ctr_drbg_random, ctx->ctr_drbg);
    // mbedtls_ssl_conf_dbg(ctx->conf, my_debug, stdout);

    // ret = mbedtls_ssl_setup(ctx->ssl, ctx->conf);
    // printf("mbedtls_ssl_setup: %d\n", ret);

    // ret = mbedtls_ssl_set_hostname(ctx->ssl, hoststr);
    // printf("mbedtls_ssl_set_hostname: %d\n", ret);

    // mbedtls_ssl_set_bio(ctx->ssl, ctx->server_fd, mbedtls_net_send, mbedtls_net_recv, mbedtls_net_recv_timeout);

    // ret = mbedtls_ssl_handshake(ctx->ssl);
    // printf("mbedtls_ssl_handshake: %d\n", ret);

    // ret = mbedtls_ssl_get_verify_result(ctx->ssl);
    // printf("mbedtls_ssl_get_verify_result: %d\n", ret);

    // const size_t readbuflen = 1024;
    // unsigned char *readbuf;

    // x_read(ctx->ssl);
    // printf("again\n");
    // x_write(ctx->ssl);
    // x_read(ctx->ssl);

    // readbuf = malloc(sizeof(unsigned char) * readbuflen);
    // ret = mbedtls_ssl_read(ctx->ssl, readbuf, readbuflen);
    // printf("mbedtls_ssl_read: %d\n", ret);
    // printf("readbuf: \"%s\"\n", readbuf);
    // free(readbuf);


    atclient_connection_ctx *ctx = atclient_connection_init(HOST, PORT);
    ret = atclient_connection_connect(ctx);
    printf("atclient_connection_connect: %d\n", ret);

    ret = atclient_connection_send(ctx, "smoothalligator\r\n", 17UL);
    printf("atclient_connection_send: %d\n", ret);

    return ret;
}