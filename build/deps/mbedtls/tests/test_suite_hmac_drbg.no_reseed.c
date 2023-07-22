#line 2 "suites/main_test.function"
/*
 * *** THIS FILE HAS BEEN MACHINE GENERATED ***
 *
 * This file has been machine generated using the script:
 * generate_test_code.py
 *
 * Test file      : ./test_suite_hmac_drbg.no_reseed.c
 *
 * The following files were used to create this file.
 *
 *      Main code file      : /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/main_test.function
 *      Platform code file  : /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/host_test.function
 *      Helper file         : /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/helpers.function
 *      Test suite file     : /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function
 *      Test suite data     : /Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.no_reseed.data
 *
 */

#if defined(__unix__) || (defined(__APPLE__) && defined(__MACH__))
#if !defined(_POSIX_C_SOURCE)
#define _POSIX_C_SOURCE 200112L // for fileno() from <stdio.h>
#endif
#endif

#include "mbedtls/build_info.h"

/* Test code may use deprecated identifiers only if the preprocessor symbol
 * MBEDTLS_TEST_DEPRECATED is defined. When building tests, set
 * MBEDTLS_TEST_DEPRECATED explicitly if MBEDTLS_DEPRECATED_WARNING is
 * enabled but the corresponding warnings are not treated as errors.
 */
#if !defined(MBEDTLS_DEPRECATED_REMOVED) && !defined(MBEDTLS_DEPRECATED_WARNING)
#define MBEDTLS_TEST_DEPRECATED
#endif

/*----------------------------------------------------------------------------*/
/* Common helper code */

#line 2 "suites/helpers.function"
/*----------------------------------------------------------------------------*/
/* Headers */

#include <test/arguments.h>
#include <test/helpers.h>
#include <test/macros.h>
#include <test/random.h>
#include <test/bignum_helpers.h>
#include <test/psa_crypto_helpers.h>

#include <errno.h>
#include <limits.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#if defined(MBEDTLS_ERROR_C)
#include "mbedtls/error.h"
#endif
#include "mbedtls/platform.h"

#if defined(MBEDTLS_MEMORY_BUFFER_ALLOC_C)
#include "mbedtls/memory_buffer_alloc.h"
#endif

#if defined(__unix__) || (defined(__APPLE__) && defined(__MACH__))
#include <unistd.h>
#endif

/*----------------------------------------------------------------------------*/
/* Status and error constants */

#define DEPENDENCY_SUPPORTED            0   /* Dependency supported by build */
#define KEY_VALUE_MAPPING_FOUND         0   /* Integer expression found */
#define DISPATCH_TEST_SUCCESS           0   /* Test dispatch successful */

#define KEY_VALUE_MAPPING_NOT_FOUND     -1  /* Integer expression not found */
#define DEPENDENCY_NOT_SUPPORTED        -2  /* Dependency not supported */
#define DISPATCH_TEST_FN_NOT_FOUND      -3  /* Test function not found */
#define DISPATCH_INVALID_TEST_DATA      -4  /* Invalid test parameter type.
                                               Only int, string, binary data
                                               and integer expressions are
                                               allowed */
#define DISPATCH_UNSUPPORTED_SUITE      -5  /* Test suite not supported by the
                                               build */

/*----------------------------------------------------------------------------*/
/* Global variables */

/*----------------------------------------------------------------------------*/
/* Helper flags for complex dependencies */

/* Indicates whether we expect mbedtls_entropy_init
 * to initialize some strong entropy source. */
#if !defined(MBEDTLS_NO_DEFAULT_ENTROPY_SOURCES) && \
    (!defined(MBEDTLS_NO_PLATFORM_ENTROPY) ||      \
    defined(MBEDTLS_ENTROPY_HARDWARE_ALT) ||    \
    defined(ENTROPY_NV_SEED))
#define ENTROPY_HAVE_STRONG
#endif


/*----------------------------------------------------------------------------*/
/* Helper Functions */

#if defined(__unix__) || (defined(__APPLE__) && defined(__MACH__))
static int redirect_output(FILE *out_stream, const char *path)
{
    int out_fd, dup_fd;
    FILE *path_stream;

    out_fd = fileno(out_stream);
    dup_fd = dup(out_fd);

    if (dup_fd == -1) {
        return -1;
    }

    path_stream = fopen(path, "w");
    if (path_stream == NULL) {
        close(dup_fd);
        return -1;
    }

    fflush(out_stream);
    if (dup2(fileno(path_stream), out_fd) == -1) {
        close(dup_fd);
        fclose(path_stream);
        return -1;
    }

    fclose(path_stream);
    return dup_fd;
}

static int restore_output(FILE *out_stream, int dup_fd)
{
    int out_fd = fileno(out_stream);

    fflush(out_stream);
    if (dup2(dup_fd, out_fd) == -1) {
        close(out_fd);
        close(dup_fd);
        return -1;
    }

    close(dup_fd);
    return 0;
}
#endif /* __unix__ || __APPLE__ __MACH__ */


#line 43 "suites/main_test.function"


/*----------------------------------------------------------------------------*/
/* Test Suite Code */


#define TEST_SUITE_ACTIVE

#if defined(MBEDTLS_HMAC_DRBG_C)
#line 2 "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function"
#include "mbedtls/hmac_drbg.h"
#include "string.h"

typedef struct {
    unsigned char *p;
    size_t len;
} entropy_ctx;

static int mbedtls_test_entropy_func(void *data, unsigned char *buf, size_t len)
{
    entropy_ctx *ctx = (entropy_ctx *) data;

    if (len > ctx->len) {
        return -1;
    }

    memcpy(buf, ctx->p, len);

    ctx->p += len;
    ctx->len -= len;

    return 0;
}
#line 33 "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function"
void test_hmac_drbg_entropy_usage(int md_alg)
{
    unsigned char out[16];
    unsigned char buf[1024];
    const mbedtls_md_info_t *md_info;
    mbedtls_hmac_drbg_context ctx;
    entropy_ctx entropy;
    size_t i, reps = 10;
    size_t default_entropy_len;
    size_t expected_consumed_entropy = 0;

    MD_PSA_INIT();

    mbedtls_hmac_drbg_init(&ctx);
    memset(buf, 0, sizeof(buf));
    memset(out, 0, sizeof(out));

    entropy.len = sizeof(buf);
    entropy.p = buf;

    md_info = mbedtls_md_info_from_type(md_alg);
    TEST_ASSERT(md_info != NULL);
    if (mbedtls_md_get_size(md_info) <= 20) {
        default_entropy_len = 16;
    } else if (mbedtls_md_get_size(md_info) <= 28) {
        default_entropy_len = 24;
    } else {
        default_entropy_len = 32;
    }

    /* Set reseed interval before seed */
    mbedtls_hmac_drbg_set_reseed_interval(&ctx, 2 * reps);

    /* Init must use entropy */
    TEST_ASSERT(mbedtls_hmac_drbg_seed(&ctx, md_info, mbedtls_test_entropy_func, &entropy,
                                       NULL, 0) == 0);
    /* default_entropy_len of entropy, plus half as much for the nonce */
    expected_consumed_entropy += default_entropy_len * 3 / 2;
    TEST_EQUAL(sizeof(buf)  - entropy.len, expected_consumed_entropy);

    /* By default, PR is off, and reseed interval was set to
     * 2 * reps so the next few calls should not use entropy */
    for (i = 0; i < reps; i++) {
        TEST_ASSERT(mbedtls_hmac_drbg_random(&ctx, out, sizeof(out) - 4) == 0);
        TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, out, sizeof(out) - 4,
                                                      buf, 16) == 0);
    }
    TEST_EQUAL(sizeof(buf)  - entropy.len, expected_consumed_entropy);

    /* While at it, make sure we didn't write past the requested length */
    TEST_ASSERT(out[sizeof(out) - 4] == 0);
    TEST_ASSERT(out[sizeof(out) - 3] == 0);
    TEST_ASSERT(out[sizeof(out) - 2] == 0);
    TEST_ASSERT(out[sizeof(out) - 1] == 0);

    /* There have been 2 * reps calls to random. The next call should reseed */
    TEST_ASSERT(mbedtls_hmac_drbg_random(&ctx, out, sizeof(out)) == 0);
    expected_consumed_entropy += default_entropy_len;
    TEST_EQUAL(sizeof(buf)  - entropy.len, expected_consumed_entropy);

    /* Set reseed interval after seed */
    mbedtls_hmac_drbg_set_reseed_interval(&ctx, 4 * reps + 1);

    /* The new few calls should not reseed */
    for (i = 0; i < (2 * reps); i++) {
        TEST_ASSERT(mbedtls_hmac_drbg_random(&ctx, out, sizeof(out)) == 0);
        TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, out, sizeof(out),
                                                      buf, 16) == 0);
    }
    TEST_EQUAL(sizeof(buf)  - entropy.len, expected_consumed_entropy);

    /* Now enable PR, so the next few calls should all reseed */
    mbedtls_hmac_drbg_set_prediction_resistance(&ctx, MBEDTLS_HMAC_DRBG_PR_ON);
    TEST_ASSERT(mbedtls_hmac_drbg_random(&ctx, out, sizeof(out)) == 0);
    expected_consumed_entropy += default_entropy_len;
    TEST_EQUAL(sizeof(buf)  - entropy.len, expected_consumed_entropy);

    /* Finally, check setting entropy_len */
    mbedtls_hmac_drbg_set_entropy_len(&ctx, 42);
    TEST_ASSERT(mbedtls_hmac_drbg_random(&ctx, out, sizeof(out)) == 0);
    expected_consumed_entropy += 42;
    TEST_EQUAL(sizeof(buf)  - entropy.len, expected_consumed_entropy);

    mbedtls_hmac_drbg_set_entropy_len(&ctx, 13);
    TEST_ASSERT(mbedtls_hmac_drbg_random(&ctx, out, sizeof(out)) == 0);
    expected_consumed_entropy += 13;
    TEST_EQUAL(sizeof(buf)  - entropy.len, expected_consumed_entropy);

exit:
    mbedtls_hmac_drbg_free(&ctx);
    MD_PSA_DONE();
}

void test_hmac_drbg_entropy_usage_wrapper( void ** params )
{

    test_hmac_drbg_entropy_usage( ((mbedtls_test_argument_t *) params[0])->sint );
}
#if defined(MBEDTLS_FS_IO)
#line 128 "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function"
void test_hmac_drbg_seed_file(int md_alg, char *path, int ret)
{
    const mbedtls_md_info_t *md_info;
    mbedtls_hmac_drbg_context ctx;

    MD_PSA_INIT();

    mbedtls_hmac_drbg_init(&ctx);

    md_info = mbedtls_md_info_from_type(md_alg);
    TEST_ASSERT(md_info != NULL);

    TEST_ASSERT(mbedtls_hmac_drbg_seed(&ctx, md_info,
                                       mbedtls_test_rnd_std_rand, NULL,
                                       NULL, 0) == 0);

    TEST_ASSERT(mbedtls_hmac_drbg_write_seed_file(&ctx, path) == ret);
    TEST_ASSERT(mbedtls_hmac_drbg_update_seed_file(&ctx, path) == ret);

exit:
    mbedtls_hmac_drbg_free(&ctx);
    MD_PSA_DONE();
}

void test_hmac_drbg_seed_file_wrapper( void ** params )
{

    test_hmac_drbg_seed_file( ((mbedtls_test_argument_t *) params[0])->sint, (char *) params[1], ((mbedtls_test_argument_t *) params[2])->sint );
}
#endif /* MBEDTLS_FS_IO */
#line 154 "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function"
void test_hmac_drbg_buf(int md_alg)
{
    unsigned char out[16];
    unsigned char buf[100];
    const mbedtls_md_info_t *md_info;
    mbedtls_hmac_drbg_context ctx;
    size_t i;

    MD_PSA_INIT();

    mbedtls_hmac_drbg_init(&ctx);
    memset(buf, 0, sizeof(buf));
    memset(out, 0, sizeof(out));

    md_info = mbedtls_md_info_from_type(md_alg);
    TEST_ASSERT(md_info != NULL);
    TEST_ASSERT(mbedtls_hmac_drbg_seed_buf(&ctx, md_info, buf, sizeof(buf)) == 0);

    /* Make sure it never tries to reseed (would segfault otherwise) */
    mbedtls_hmac_drbg_set_reseed_interval(&ctx, 3);
    mbedtls_hmac_drbg_set_prediction_resistance(&ctx, MBEDTLS_HMAC_DRBG_PR_ON);

    for (i = 0; i < 30; i++) {
        TEST_ASSERT(mbedtls_hmac_drbg_random(&ctx, out, sizeof(out)) == 0);
    }

exit:
    mbedtls_hmac_drbg_free(&ctx);
    MD_PSA_DONE();
}

void test_hmac_drbg_buf_wrapper( void ** params )
{

    test_hmac_drbg_buf( ((mbedtls_test_argument_t *) params[0])->sint );
}
#line 187 "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function"
void test_hmac_drbg_no_reseed(int md_alg, data_t *entropy,
                         data_t *custom, data_t *add1,
                         data_t *add2, data_t *output)
{
    unsigned char data[1024];
    unsigned char my_output[512];
    entropy_ctx p_entropy;
    const mbedtls_md_info_t *md_info;
    mbedtls_hmac_drbg_context ctx;

    MD_PSA_INIT();

    mbedtls_hmac_drbg_init(&ctx);

    p_entropy.p = entropy->x;
    p_entropy.len = entropy->len;

    md_info = mbedtls_md_info_from_type(md_alg);
    TEST_ASSERT(md_info != NULL);

    /* Test the simplified buffer-based variant */
    memcpy(data, entropy->x, p_entropy.len);
    memcpy(data + p_entropy.len, custom->x, custom->len);
    TEST_ASSERT(mbedtls_hmac_drbg_seed_buf(&ctx, md_info,
                                           data, p_entropy.len + custom->len) == 0);
    TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, my_output, output->len,
                                                  add1->x, add1->len) == 0);
    TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, my_output, output->len,
                                                  add2->x, add2->len) == 0);

    /* Reset context for second run */
    mbedtls_hmac_drbg_free(&ctx);

    TEST_ASSERT(memcmp(my_output, output->x, output->len) == 0);

    /* And now the normal entropy-based variant */
    TEST_ASSERT(mbedtls_hmac_drbg_seed(&ctx, md_info, mbedtls_test_entropy_func, &p_entropy,
                                       custom->x, custom->len) == 0);
    TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, my_output, output->len,
                                                  add1->x, add1->len) == 0);
    TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, my_output, output->len,
                                                  add2->x, add2->len) == 0);
    TEST_ASSERT(memcmp(my_output, output->x, output->len) == 0);

exit:
    mbedtls_hmac_drbg_free(&ctx);
    MD_PSA_DONE();
}

void test_hmac_drbg_no_reseed_wrapper( void ** params )
{
    data_t data1 = {(uint8_t *) params[1], ((mbedtls_test_argument_t *) params[2])->len};
    data_t data3 = {(uint8_t *) params[3], ((mbedtls_test_argument_t *) params[4])->len};
    data_t data5 = {(uint8_t *) params[5], ((mbedtls_test_argument_t *) params[6])->len};
    data_t data7 = {(uint8_t *) params[7], ((mbedtls_test_argument_t *) params[8])->len};
    data_t data9 = {(uint8_t *) params[9], ((mbedtls_test_argument_t *) params[10])->len};

    test_hmac_drbg_no_reseed( ((mbedtls_test_argument_t *) params[0])->sint, &data1, &data3, &data5, &data7, &data9 );
}
#line 238 "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function"
void test_hmac_drbg_nopr(int md_alg, data_t *entropy, data_t *custom,
                    data_t *add1, data_t *add2, data_t *add3,
                    data_t *output)
{
    unsigned char my_output[512];
    entropy_ctx p_entropy;
    const mbedtls_md_info_t *md_info;
    mbedtls_hmac_drbg_context ctx;

    MD_PSA_INIT();

    mbedtls_hmac_drbg_init(&ctx);

    p_entropy.p = entropy->x;
    p_entropy.len = entropy->len;

    md_info = mbedtls_md_info_from_type(md_alg);
    TEST_ASSERT(md_info != NULL);

    TEST_ASSERT(mbedtls_hmac_drbg_seed(&ctx, md_info, mbedtls_test_entropy_func, &p_entropy,
                                       custom->x, custom->len) == 0);
    TEST_ASSERT(mbedtls_hmac_drbg_reseed(&ctx, add1->x, add1->len) == 0);
    TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, my_output, output->len,
                                                  add2->x, add2->len) == 0);
    TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, my_output, output->len,
                                                  add3->x, add3->len) == 0);

    TEST_ASSERT(memcmp(my_output, output->x, output->len) == 0);

exit:
    mbedtls_hmac_drbg_free(&ctx);
    MD_PSA_DONE();
}

void test_hmac_drbg_nopr_wrapper( void ** params )
{
    data_t data1 = {(uint8_t *) params[1], ((mbedtls_test_argument_t *) params[2])->len};
    data_t data3 = {(uint8_t *) params[3], ((mbedtls_test_argument_t *) params[4])->len};
    data_t data5 = {(uint8_t *) params[5], ((mbedtls_test_argument_t *) params[6])->len};
    data_t data7 = {(uint8_t *) params[7], ((mbedtls_test_argument_t *) params[8])->len};
    data_t data9 = {(uint8_t *) params[9], ((mbedtls_test_argument_t *) params[10])->len};
    data_t data11 = {(uint8_t *) params[11], ((mbedtls_test_argument_t *) params[12])->len};

    test_hmac_drbg_nopr( ((mbedtls_test_argument_t *) params[0])->sint, &data1, &data3, &data5, &data7, &data9, &data11 );
}
#line 274 "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function"
void test_hmac_drbg_pr(int md_alg, data_t *entropy, data_t *custom,
                  data_t *add1, data_t *add2, data_t *output)
{
    unsigned char my_output[512];
    entropy_ctx p_entropy;
    const mbedtls_md_info_t *md_info;
    mbedtls_hmac_drbg_context ctx;

    MD_PSA_INIT();

    mbedtls_hmac_drbg_init(&ctx);

    p_entropy.p = entropy->x;
    p_entropy.len = entropy->len;

    md_info = mbedtls_md_info_from_type(md_alg);
    TEST_ASSERT(md_info != NULL);

    TEST_ASSERT(mbedtls_hmac_drbg_seed(&ctx, md_info, mbedtls_test_entropy_func, &p_entropy,
                                       custom->x, custom->len) == 0);
    mbedtls_hmac_drbg_set_prediction_resistance(&ctx, MBEDTLS_HMAC_DRBG_PR_ON);
    TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, my_output, output->len,
                                                  add1->x, add1->len) == 0);
    TEST_ASSERT(mbedtls_hmac_drbg_random_with_add(&ctx, my_output, output->len,
                                                  add2->x, add2->len) == 0);

    TEST_ASSERT(memcmp(my_output, output->x, output->len) == 0);

exit:
    mbedtls_hmac_drbg_free(&ctx);
    MD_PSA_DONE();
}

void test_hmac_drbg_pr_wrapper( void ** params )
{
    data_t data1 = {(uint8_t *) params[1], ((mbedtls_test_argument_t *) params[2])->len};
    data_t data3 = {(uint8_t *) params[3], ((mbedtls_test_argument_t *) params[4])->len};
    data_t data5 = {(uint8_t *) params[5], ((mbedtls_test_argument_t *) params[6])->len};
    data_t data7 = {(uint8_t *) params[7], ((mbedtls_test_argument_t *) params[8])->len};
    data_t data9 = {(uint8_t *) params[9], ((mbedtls_test_argument_t *) params[10])->len};

    test_hmac_drbg_pr( ((mbedtls_test_argument_t *) params[0])->sint, &data1, &data3, &data5, &data7, &data9 );
}
#if defined(MBEDTLS_SELF_TEST)
#line 309 "/Users/jeremytubongbanua/GitHub/my_c_sockets/deps/mbedtls/tests/suites/test_suite_hmac_drbg.function"
void test_hmac_drbg_selftest()
{
    MD_PSA_INIT();

    TEST_ASSERT(mbedtls_hmac_drbg_self_test(1) == 0);

exit:
    MD_PSA_DONE();
}

void test_hmac_drbg_selftest_wrapper( void ** params )
{
    (void)params;

    test_hmac_drbg_selftest(  );
}
#endif /* MBEDTLS_SELF_TEST */
#endif /* MBEDTLS_HMAC_DRBG_C */


#line 54 "suites/main_test.function"


/*----------------------------------------------------------------------------*/
/* Test dispatch code */


/**
 * \brief       Evaluates an expression/macro into its literal integer value.
 *              For optimizing space for embedded targets each expression/macro
 *              is identified by a unique identifier instead of string literals.
 *              Identifiers and evaluation code is generated by script:
 *              generate_test_code.py
 *
 * \param exp_id    Expression identifier.
 * \param out_value Pointer to int to hold the integer.
 *
 * \return       0 if exp_id is found. 1 otherwise.
 */
int get_expression(int32_t exp_id, intmax_t *out_value)
{
    int ret = KEY_VALUE_MAPPING_FOUND;

    (void) exp_id;
    (void) out_value;

    switch (exp_id) {
    
#if defined(MBEDTLS_HMAC_DRBG_C)

        case 0:
            {
                *out_value = MBEDTLS_MD_SHA1;
            }
            break;
        case 1:
            {
                *out_value = MBEDTLS_MD_SHA224;
            }
            break;
        case 2:
            {
                *out_value = MBEDTLS_MD_SHA256;
            }
            break;
        case 3:
            {
                *out_value = MBEDTLS_MD_SHA384;
            }
            break;
        case 4:
            {
                *out_value = MBEDTLS_MD_SHA512;
            }
            break;
#endif

#line 82 "suites/main_test.function"
        default:
        {
            ret = KEY_VALUE_MAPPING_NOT_FOUND;
        }
        break;
    }
    return ret;
}


/**
 * \brief       Checks if the dependency i.e. the compile flag is set.
 *              For optimizing space for embedded targets each dependency
 *              is identified by a unique identifier instead of string literals.
 *              Identifiers and check code is generated by script:
 *              generate_test_code.py
 *
 * \param dep_id    Dependency identifier.
 *
 * \return       DEPENDENCY_SUPPORTED if set else DEPENDENCY_NOT_SUPPORTED
 */
int dep_check(int dep_id)
{
    int ret = DEPENDENCY_NOT_SUPPORTED;

    (void) dep_id;

    switch (dep_id) {
    
#if defined(MBEDTLS_HMAC_DRBG_C)

        case 0:
            {
#if defined(MBEDTLS_MD_CAN_SHA1)
                ret = DEPENDENCY_SUPPORTED;
#else
                ret = DEPENDENCY_NOT_SUPPORTED;
#endif
            }
            break;
        case 1:
            {
#if defined(MBEDTLS_MD_CAN_SHA224)
                ret = DEPENDENCY_SUPPORTED;
#else
                ret = DEPENDENCY_NOT_SUPPORTED;
#endif
            }
            break;
        case 2:
            {
#if defined(MBEDTLS_MD_CAN_SHA256)
                ret = DEPENDENCY_SUPPORTED;
#else
                ret = DEPENDENCY_NOT_SUPPORTED;
#endif
            }
            break;
        case 3:
            {
#if defined(MBEDTLS_MD_CAN_SHA384)
                ret = DEPENDENCY_SUPPORTED;
#else
                ret = DEPENDENCY_NOT_SUPPORTED;
#endif
            }
            break;
        case 4:
            {
#if defined(MBEDTLS_MD_CAN_SHA512)
                ret = DEPENDENCY_SUPPORTED;
#else
                ret = DEPENDENCY_NOT_SUPPORTED;
#endif
            }
            break;
#endif

#line 112 "suites/main_test.function"
        default:
            break;
    }
    return ret;
}


/**
 * \brief       Function pointer type for test function wrappers.
 *
 * A test function wrapper decodes the parameters and passes them to the
 * underlying test function. Both the wrapper and the underlying function
 * return void. Test wrappers assume that they are passed a suitable
 * parameter array and do not perform any error detection.
 *
 * \param param_array   The array of parameters. Each element is a `void *`
 *                      which the wrapper casts to the correct type and
 *                      dereferences. Each wrapper function hard-codes the
 *                      number and types of the parameters.
 */
typedef void (*TestWrapper_t)(void **param_array);


/**
 * \brief       Table of test function wrappers. Used by dispatch_test().
 *              This table is populated by script:
 *              generate_test_code.py
 *
 */
TestWrapper_t test_funcs[] =
{
    /* Function Id: 0 */

#if defined(MBEDTLS_HMAC_DRBG_C)
    test_hmac_drbg_entropy_usage_wrapper,
#else
    NULL,
#endif
/* Function Id: 1 */

#if defined(MBEDTLS_HMAC_DRBG_C) && defined(MBEDTLS_FS_IO)
    test_hmac_drbg_seed_file_wrapper,
#else
    NULL,
#endif
/* Function Id: 2 */

#if defined(MBEDTLS_HMAC_DRBG_C)
    test_hmac_drbg_buf_wrapper,
#else
    NULL,
#endif
/* Function Id: 3 */

#if defined(MBEDTLS_HMAC_DRBG_C)
    test_hmac_drbg_no_reseed_wrapper,
#else
    NULL,
#endif
/* Function Id: 4 */

#if defined(MBEDTLS_HMAC_DRBG_C)
    test_hmac_drbg_nopr_wrapper,
#else
    NULL,
#endif
/* Function Id: 5 */

#if defined(MBEDTLS_HMAC_DRBG_C)
    test_hmac_drbg_pr_wrapper,
#else
    NULL,
#endif
/* Function Id: 6 */

#if defined(MBEDTLS_HMAC_DRBG_C) && defined(MBEDTLS_SELF_TEST)
    test_hmac_drbg_selftest_wrapper,
#else
    NULL,
#endif

#line 145 "suites/main_test.function"
};

/**
 * \brief        Dispatches test functions based on function index.
 *
 * \param func_idx    Test function index.
 * \param params      The array of parameters to pass to the test function.
 *                    It will be decoded by the #TestWrapper_t wrapper function.
 *
 * \return       DISPATCH_TEST_SUCCESS if found
 *               DISPATCH_TEST_FN_NOT_FOUND if not found
 *               DISPATCH_UNSUPPORTED_SUITE if not compile time enabled.
 */
int dispatch_test(size_t func_idx, void **params)
{
    int ret = DISPATCH_TEST_SUCCESS;
    TestWrapper_t fp = NULL;

    if (func_idx < (int) (sizeof(test_funcs) / sizeof(TestWrapper_t))) {
        fp = test_funcs[func_idx];
        if (fp) {
            #if defined(MBEDTLS_PSA_CRYPTO_EXTERNAL_RNG)
            mbedtls_test_enable_insecure_external_rng();
            #endif

            fp(params);

            #if defined(MBEDTLS_TEST_MUTEX_USAGE)
            mbedtls_test_mutex_usage_check();
            #endif /* MBEDTLS_TEST_MUTEX_USAGE */
        } else {
            ret = DISPATCH_UNSUPPORTED_SUITE;
        }
    } else {
        ret = DISPATCH_TEST_FN_NOT_FOUND;
    }

    return ret;
}


/**
 * \brief       Checks if test function is supported in this build-time
 *              configuration.
 *
 * \param func_idx    Test function index.
 *
 * \return       DISPATCH_TEST_SUCCESS if found
 *               DISPATCH_TEST_FN_NOT_FOUND if not found
 *               DISPATCH_UNSUPPORTED_SUITE if not compile time enabled.
 */
int check_test(size_t func_idx)
{
    int ret = DISPATCH_TEST_SUCCESS;
    TestWrapper_t fp = NULL;

    if (func_idx < (int) (sizeof(test_funcs)/sizeof(TestWrapper_t))) {
        fp = test_funcs[func_idx];
        if (fp == NULL) {
            ret = DISPATCH_UNSUPPORTED_SUITE;
        }
    } else {
        ret = DISPATCH_TEST_FN_NOT_FOUND;
    }

    return ret;
}


#line 2 "suites/host_test.function"

/**
 * \brief       Verifies that string is in string parameter format i.e. "<str>"
 *              It also strips enclosing '"' from the input string.
 *
 * \param str   String parameter.
 *
 * \return      0 if success else 1
 */
int verify_string(char **str)
{
    if ((*str)[0] != '"' ||
        (*str)[strlen(*str) - 1] != '"') {
        mbedtls_fprintf(stderr,
                        "Expected string (with \"\") for parameter and got: %s\n", *str);
        return -1;
    }

    (*str)++;
    (*str)[strlen(*str) - 1] = '\0';

    return 0;
}

/**
 * \brief       Verifies that string is an integer. Also gives the converted
 *              integer value.
 *
 * \param str   Input string.
 * \param p_value Pointer to output value.
 *
 * \return      0 if success else 1
 */
int verify_int(char *str, intmax_t *p_value)
{
    char *end = NULL;
    errno = 0;
    /* Limit the range to long: for large integers, the test framework will
     * use expressions anyway. */
    long value = strtol(str, &end, 0);
    if (errno == EINVAL || *end != '\0') {
        mbedtls_fprintf(stderr,
                        "Expected integer for parameter and got: %s\n", str);
        return KEY_VALUE_MAPPING_NOT_FOUND;
    }
    if (errno == ERANGE) {
        mbedtls_fprintf(stderr, "Integer out of range: %s\n", str);
        return KEY_VALUE_MAPPING_NOT_FOUND;
    }
    *p_value = value;
    return 0;
}


/**
 * \brief       Usage string.
 *
 */
#define USAGE \
    "Usage: %s [OPTIONS] files...\n\n" \
    "   Command line arguments:\n" \
    "     files...          One or more test data files. If no file is\n" \
    "                       specified the following default test case\n" \
    "                       file is used:\n" \
    "                           %s\n\n" \
    "   Options:\n" \
    "     -v | --verbose    Display full information about each test\n" \
    "     -h | --help       Display this information\n\n", \
    argv[0], \
    "TESTCASE_FILENAME"


/**
 * \brief       Read a line from the passed file pointer.
 *
 * \param f     FILE pointer
 * \param buf   Pointer to memory to hold read line.
 * \param len   Length of the buf.
 *
 * \return      0 if success else -1
 */
int get_line(FILE *f, char *buf, size_t len)
{
    char *ret;
    int i = 0, str_len = 0, has_string = 0;

    /* Read until we get a valid line */
    do {
        ret = fgets(buf, len, f);
        if (ret == NULL) {
            return -1;
        }

        str_len = strlen(buf);

        /* Skip empty line and comment */
        if (str_len == 0 || buf[0] == '#') {
            continue;
        }
        has_string = 0;
        for (i = 0; i < str_len; i++) {
            char c = buf[i];
            if (c != ' ' && c != '\t' && c != '\n' &&
                c != '\v' && c != '\f' && c != '\r') {
                has_string = 1;
                break;
            }
        }
    } while (!has_string);

    /* Strip new line and carriage return */
    ret = buf + strlen(buf);
    if (ret-- > buf && *ret == '\n') {
        *ret = '\0';
    }
    if (ret-- > buf && *ret == '\r') {
        *ret = '\0';
    }

    return 0;
}

/**
 * \brief       Splits string delimited by ':'. Ignores '\:'.
 *
 * \param buf           Input string
 * \param len           Input string length
 * \param params        Out params found
 * \param params_len    Out params array len
 *
 * \return      Count of strings found.
 */
static int parse_arguments(char *buf, size_t len, char **params,
                           size_t params_len)
{
    size_t cnt = 0, i;
    char *cur = buf;
    char *p = buf, *q;

    params[cnt++] = cur;

    while (*p != '\0' && p < (buf + len)) {
        if (*p == '\\') {
            p++;
            p++;
            continue;
        }
        if (*p == ':') {
            if (p + 1 < buf + len) {
                cur = p + 1;
                TEST_HELPER_ASSERT(cnt < params_len);
                params[cnt++] = cur;
            }
            *p = '\0';
        }

        p++;
    }

    /* Replace backslash escapes in strings */
    for (i = 0; i < cnt; i++) {
        p = params[i];
        q = params[i];

        while (*p != '\0') {
            if (*p == '\\') {
                ++p;
                switch (*p) {
                    case 'n':
                        *p = '\n';
                        break;
                    default:
                        // Fall through to copying *p
                        break;
                }
            }
            *(q++) = *(p++);
        }
        *q = '\0';
    }

    return cnt;
}

/**
 * \brief       Converts parameters into test function consumable parameters.
 *              Example: Input:  {"int", "0", "char*", "Hello",
 *                                "hex", "abef", "exp", "1"}
 *                      Output:  {
 *                                0,                // Verified int
 *                                "Hello",          // Verified string
 *                                2, { 0xab, 0xef },// Converted len,hex pair
 *                                9600              // Evaluated expression
 *                               }
 *
 *
 * \param cnt               Parameter array count.
 * \param params            Out array of found parameters.
 * \param int_params_store  Memory for storing processed integer parameters.
 *
 * \return      0 for success else 1
 */
static int convert_params(size_t cnt, char **params,
                          mbedtls_test_argument_t *int_params_store)
{
    char **cur = params;
    char **out = params;
    int ret = DISPATCH_TEST_SUCCESS;

    while (cur < params + cnt) {
        char *type = *cur++;
        char *val = *cur++;

        if (strcmp(type, "char*") == 0) {
            if (verify_string(&val) == 0) {
                *out++ = val;
            } else {
                ret = (DISPATCH_INVALID_TEST_DATA);
                break;
            }
        } else if (strcmp(type, "int") == 0) {
            if (verify_int(val, &int_params_store->sint) == 0) {
                *out++ = (char *) int_params_store++;
            } else {
                ret = (DISPATCH_INVALID_TEST_DATA);
                break;
            }
        } else if (strcmp(type, "hex") == 0) {
            if (verify_string(&val) == 0) {
                size_t len;

                TEST_HELPER_ASSERT(
                    mbedtls_test_unhexify((unsigned char *) val, strlen(val),
                                          val, &len) == 0);

                int_params_store->len = len;
                *out++ = val;
                *out++ = (char *) (int_params_store++);
            } else {
                ret = (DISPATCH_INVALID_TEST_DATA);
                break;
            }
        } else if (strcmp(type, "exp") == 0) {
            int exp_id = strtol(val, NULL, 10);
            if (get_expression(exp_id, &int_params_store->sint) == 0) {
                *out++ = (char *) int_params_store++;
            } else {
                ret = (DISPATCH_INVALID_TEST_DATA);
                break;
            }
        } else {
            ret = (DISPATCH_INVALID_TEST_DATA);
            break;
        }
    }
    return ret;
}

/**
 * \brief       Tests snprintf implementation with test input.
 *
 * \note
 * At high optimization levels (e.g. gcc -O3), this function may be
 * inlined in run_test_snprintf. This can trigger a spurious warning about
 * potential misuse of snprintf from gcc -Wformat-truncation (observed with
 * gcc 7.2). This warning makes tests in run_test_snprintf redundant on gcc
 * only. They are still valid for other compilers. Avoid this warning by
 * forbidding inlining of this function by gcc.
 *
 * \param n         Buffer test length.
 * \param ref_buf   Expected buffer.
 * \param ref_ret   Expected snprintf return value.
 *
 * \return      0 for success else 1
 */
#if defined(__GNUC__)
__attribute__((__noinline__))
#endif
static int test_snprintf(size_t n, const char *ref_buf, int ref_ret)
{
    int ret;
    char buf[10] = "xxxxxxxxx";
    const char ref[10] = "xxxxxxxxx";

    if (n >= sizeof(buf)) {
        return -1;
    }
    ret = mbedtls_snprintf(buf, n, "%s", "123");
    if (ret < 0 || (size_t) ret >= n) {
        ret = -1;
    }

    if (strncmp(ref_buf, buf, sizeof(buf)) != 0 ||
        ref_ret != ret ||
        memcmp(buf + n, ref + n, sizeof(buf) - n) != 0) {
        return 1;
    }

    return 0;
}

/**
 * \brief       Tests snprintf implementation.
 *
 * \return      0 for success else 1
 */
static int run_test_snprintf(void)
{
    return test_snprintf(0, "xxxxxxxxx",  -1) != 0 ||
           test_snprintf(1, "",           -1) != 0 ||
           test_snprintf(2, "1",          -1) != 0 ||
           test_snprintf(3, "12",         -1) != 0 ||
           test_snprintf(4, "123",         3) != 0 ||
           test_snprintf(5, "123",         3) != 0;
}

/** \brief Write the description of the test case to the outcome CSV file.
 *
 * \param outcome_file  The file to write to.
 *                      If this is \c NULL, this function does nothing.
 * \param argv0         The test suite name.
 * \param test_case     The test case description.
 */
static void write_outcome_entry(FILE *outcome_file,
                                const char *argv0,
                                const char *test_case)
{
    /* The non-varying fields are initialized on first use. */
    static const char *platform = NULL;
    static const char *configuration = NULL;
    static const char *test_suite = NULL;

    if (outcome_file == NULL) {
        return;
    }

    if (platform == NULL) {
        platform = getenv("MBEDTLS_TEST_PLATFORM");
        if (platform == NULL) {
            platform = "unknown";
        }
    }
    if (configuration == NULL) {
        configuration = getenv("MBEDTLS_TEST_CONFIGURATION");
        if (configuration == NULL) {
            configuration = "unknown";
        }
    }
    if (test_suite == NULL) {
        test_suite = strrchr(argv0, '/');
        if (test_suite != NULL) {
            test_suite += 1; // skip the '/'
        } else {
            test_suite = argv0;
        }
    }

    /* Write the beginning of the outcome line.
     * Ignore errors: writing the outcome file is on a best-effort basis. */
    mbedtls_fprintf(outcome_file, "%s;%s;%s;%s;",
                    platform, configuration, test_suite, test_case);
}

/** \brief Write the result of the test case to the outcome CSV file.
 *
 * \param outcome_file  The file to write to.
 *                      If this is \c NULL, this function does nothing.
 * \param unmet_dep_count            The number of unmet dependencies.
 * \param unmet_dependencies         The array of unmet dependencies.
 * \param missing_unmet_dependencies Non-zero if there was a problem tracking
 *                                   all unmet dependencies, 0 otherwise.
 * \param ret                        The test dispatch status (DISPATCH_xxx).
 * \param info                       A pointer to the test info structure.
 */
static void write_outcome_result(FILE *outcome_file,
                                 size_t unmet_dep_count,
                                 int unmet_dependencies[],
                                 int missing_unmet_dependencies,
                                 int ret,
                                 const mbedtls_test_info_t *info)
{
    if (outcome_file == NULL) {
        return;
    }

    /* Write the end of the outcome line.
     * Ignore errors: writing the outcome file is on a best-effort basis. */
    switch (ret) {
        case DISPATCH_TEST_SUCCESS:
            if (unmet_dep_count > 0) {
                size_t i;
                mbedtls_fprintf(outcome_file, "SKIP");
                for (i = 0; i < unmet_dep_count; i++) {
                    mbedtls_fprintf(outcome_file, "%c%d",
                                    i == 0 ? ';' : ':',
                                    unmet_dependencies[i]);
                }
                if (missing_unmet_dependencies) {
                    mbedtls_fprintf(outcome_file, ":...");
                }
                break;
            }
            switch (info->result) {
                case MBEDTLS_TEST_RESULT_SUCCESS:
                    mbedtls_fprintf(outcome_file, "PASS;");
                    break;
                case MBEDTLS_TEST_RESULT_SKIPPED:
                    mbedtls_fprintf(outcome_file, "SKIP;Runtime skip");
                    break;
                default:
                    mbedtls_fprintf(outcome_file, "FAIL;%s:%d:%s",
                                    info->filename, info->line_no,
                                    info->test);
                    break;
            }
            break;
        case DISPATCH_TEST_FN_NOT_FOUND:
            mbedtls_fprintf(outcome_file, "FAIL;Test function not found");
            break;
        case DISPATCH_INVALID_TEST_DATA:
            mbedtls_fprintf(outcome_file, "FAIL;Invalid test data");
            break;
        case DISPATCH_UNSUPPORTED_SUITE:
            mbedtls_fprintf(outcome_file, "SKIP;Unsupported suite");
            break;
        default:
            mbedtls_fprintf(outcome_file, "FAIL;Unknown cause");
            break;
    }
    mbedtls_fprintf(outcome_file, "\n");
    fflush(outcome_file);
}

/**
 * \brief       Desktop implementation of execute_tests().
 *              Parses command line and executes tests from
 *              supplied or default data file.
 *
 * \param argc  Command line argument count.
 * \param argv  Argument array.
 *
 * \return      Program exit status.
 */
int execute_tests(int argc, const char **argv)
{
    /* Local Configurations and options */
    const char *default_filename = "./test_suite_hmac_drbg.no_reseed.datax";
    const char *test_filename = NULL;
    const char **test_files = NULL;
    size_t testfile_count = 0;
    int option_verbose = 0;
    size_t function_id = 0;

    /* Other Local variables */
    int arg_index = 1;
    const char *next_arg;
    size_t testfile_index, i, cnt;
    int ret;
    unsigned total_errors = 0, total_tests = 0, total_skipped = 0;
    FILE *file;
    char buf[5000];
    char *params[50];
    /* Store for processed integer params. */
    mbedtls_test_argument_t int_params[50];
    void *pointer;
#if defined(__unix__) || (defined(__APPLE__) && defined(__MACH__))
    int stdout_fd = -1;
#endif /* __unix__ || __APPLE__ __MACH__ */
    const char *outcome_file_name = getenv("MBEDTLS_TEST_OUTCOME_FILE");
    FILE *outcome_file = NULL;

#if defined(MBEDTLS_MEMORY_BUFFER_ALLOC_C) && \
    !defined(TEST_SUITE_MEMORY_BUFFER_ALLOC)
    unsigned char alloc_buf[1000000];
    mbedtls_memory_buffer_alloc_init(alloc_buf, sizeof(alloc_buf));
#endif

#if defined(MBEDTLS_TEST_MUTEX_USAGE)
    mbedtls_test_mutex_usage_init();
#endif

    /*
     * The C standard doesn't guarantee that all-bits-0 is the representation
     * of a NULL pointer. We do however use that in our code for initializing
     * structures, which should work on every modern platform. Let's be sure.
     */
    memset(&pointer, 0, sizeof(void *));
    if (pointer != NULL) {
        mbedtls_fprintf(stderr, "all-bits-zero is not a NULL pointer\n");
        return 1;
    }

    /*
     * Make sure we have a snprintf that correctly zero-terminates
     */
    if (run_test_snprintf() != 0) {
        mbedtls_fprintf(stderr, "the snprintf implementation is broken\n");
        return 1;
    }

    if (outcome_file_name != NULL && *outcome_file_name != '\0') {
        outcome_file = fopen(outcome_file_name, "a");
        if (outcome_file == NULL) {
            mbedtls_fprintf(stderr, "Unable to open outcome file. Continuing anyway.\n");
        }
    }

    while (arg_index < argc) {
        next_arg = argv[arg_index];

        if (strcmp(next_arg, "--verbose") == 0 ||
            strcmp(next_arg, "-v") == 0) {
            option_verbose = 1;
        } else if (strcmp(next_arg, "--help") == 0 ||
                   strcmp(next_arg, "-h") == 0) {
            mbedtls_fprintf(stdout, USAGE);
            mbedtls_exit(EXIT_SUCCESS);
        } else {
            /* Not an option, therefore treat all further arguments as the file
             * list.
             */
            test_files = &argv[arg_index];
            testfile_count = argc - arg_index;
            break;
        }

        arg_index++;
    }

    /* If no files were specified, assume a default */
    if (test_files == NULL || testfile_count == 0) {
        test_files = &default_filename;
        testfile_count = 1;
    }

    /* Initialize the struct that holds information about the last test */
    mbedtls_test_info_reset();

    /* Now begin to execute the tests in the testfiles */
    for (testfile_index = 0;
         testfile_index < testfile_count;
         testfile_index++) {
        size_t unmet_dep_count = 0;
        int unmet_dependencies[20];
        int missing_unmet_dependencies = 0;

        test_filename = test_files[testfile_index];

        file = fopen(test_filename, "r");
        if (file == NULL) {
            mbedtls_fprintf(stderr, "Failed to open test file: %s\n",
                            test_filename);
            if (outcome_file != NULL) {
                fclose(outcome_file);
            }
            return 1;
        }

        while (!feof(file)) {
            if (unmet_dep_count > 0) {
                mbedtls_fprintf(stderr,
                                "FATAL: Dep count larger than zero at start of loop\n");
                mbedtls_exit(MBEDTLS_EXIT_FAILURE);
            }
            unmet_dep_count = 0;
            missing_unmet_dependencies = 0;

            if ((ret = get_line(file, buf, sizeof(buf))) != 0) {
                break;
            }
            mbedtls_fprintf(stdout, "%s%.66s",
                            mbedtls_test_info.result == MBEDTLS_TEST_RESULT_FAILED ?
                            "\n" : "", buf);
            mbedtls_fprintf(stdout, " ");
            for (i = strlen(buf) + 1; i < 67; i++) {
                mbedtls_fprintf(stdout, ".");
            }
            mbedtls_fprintf(stdout, " ");
            fflush(stdout);
            write_outcome_entry(outcome_file, argv[0], buf);

            total_tests++;

            if ((ret = get_line(file, buf, sizeof(buf))) != 0) {
                break;
            }
            cnt = parse_arguments(buf, strlen(buf), params,
                                  sizeof(params) / sizeof(params[0]));

            if (strcmp(params[0], "depends_on") == 0) {
                for (i = 1; i < cnt; i++) {
                    int dep_id = strtol(params[i], NULL, 10);
                    if (dep_check(dep_id) != DEPENDENCY_SUPPORTED) {
                        if (unmet_dep_count <
                            ARRAY_LENGTH(unmet_dependencies)) {
                            unmet_dependencies[unmet_dep_count] = dep_id;
                            unmet_dep_count++;
                        } else {
                            missing_unmet_dependencies = 1;
                        }
                    }
                }

                if ((ret = get_line(file, buf, sizeof(buf))) != 0) {
                    break;
                }
                cnt = parse_arguments(buf, strlen(buf), params,
                                      sizeof(params) / sizeof(params[0]));
            }

            // If there are no unmet dependencies execute the test
            if (unmet_dep_count == 0) {
                mbedtls_test_info_reset();

#if defined(__unix__) || (defined(__APPLE__) && defined(__MACH__))
                /* Suppress all output from the library unless we're verbose
                 * mode
                 */
                if (!option_verbose) {
                    stdout_fd = redirect_output(stdout, "/dev/null");
                    if (stdout_fd == -1) {
                        /* Redirection has failed with no stdout so exit */
                        exit(1);
                    }
                }
#endif /* __unix__ || __APPLE__ __MACH__ */

                function_id = strtoul(params[0], NULL, 10);
                if ((ret = check_test(function_id)) == DISPATCH_TEST_SUCCESS) {
                    ret = convert_params(cnt - 1, params + 1, int_params);
                    if (DISPATCH_TEST_SUCCESS == ret) {
                        ret = dispatch_test(function_id, (void **) (params + 1));
                    }
                }

#if defined(__unix__) || (defined(__APPLE__) && defined(__MACH__))
                if (!option_verbose && restore_output(stdout, stdout_fd)) {
                    /* Redirection has failed with no stdout so exit */
                    exit(1);
                }
#endif /* __unix__ || __APPLE__ __MACH__ */

            }

            write_outcome_result(outcome_file,
                                 unmet_dep_count, unmet_dependencies,
                                 missing_unmet_dependencies,
                                 ret, &mbedtls_test_info);
            if (unmet_dep_count > 0 || ret == DISPATCH_UNSUPPORTED_SUITE) {
                total_skipped++;
                mbedtls_fprintf(stdout, "----");

                if (1 == option_verbose && ret == DISPATCH_UNSUPPORTED_SUITE) {
                    mbedtls_fprintf(stdout, "\n   Test Suite not enabled");
                }

                if (1 == option_verbose && unmet_dep_count > 0) {
                    mbedtls_fprintf(stdout, "\n   Unmet dependencies: ");
                    for (i = 0; i < unmet_dep_count; i++) {
                        mbedtls_fprintf(stdout, "%d ",
                                        unmet_dependencies[i]);
                    }
                    if (missing_unmet_dependencies) {
                        mbedtls_fprintf(stdout, "...");
                    }
                }
                mbedtls_fprintf(stdout, "\n");
                fflush(stdout);

                unmet_dep_count = 0;
                missing_unmet_dependencies = 0;
            } else if (ret == DISPATCH_TEST_SUCCESS) {
                if (mbedtls_test_info.result == MBEDTLS_TEST_RESULT_SUCCESS) {
                    mbedtls_fprintf(stdout, "PASS\n");
                } else if (mbedtls_test_info.result == MBEDTLS_TEST_RESULT_SKIPPED) {
                    mbedtls_fprintf(stdout, "----\n");
                    total_skipped++;
                } else {
                    total_errors++;
                    mbedtls_fprintf(stdout, "FAILED\n");
                    mbedtls_fprintf(stdout, "  %s\n  at ",
                                    mbedtls_test_info.test);
                    if (mbedtls_test_info.step != (unsigned long) (-1)) {
                        mbedtls_fprintf(stdout, "step %lu, ",
                                        mbedtls_test_info.step);
                    }
                    mbedtls_fprintf(stdout, "line %d, %s",
                                    mbedtls_test_info.line_no,
                                    mbedtls_test_info.filename);
                    if (mbedtls_test_info.line1[0] != 0) {
                        mbedtls_fprintf(stdout, "\n  %s",
                                        mbedtls_test_info.line1);
                    }
                    if (mbedtls_test_info.line2[0] != 0) {
                        mbedtls_fprintf(stdout, "\n  %s",
                                        mbedtls_test_info.line2);
                    }
                }
                fflush(stdout);
            } else if (ret == DISPATCH_INVALID_TEST_DATA) {
                mbedtls_fprintf(stderr, "FAILED: FATAL PARSE ERROR\n");
                fclose(file);
                mbedtls_exit(2);
            } else if (ret == DISPATCH_TEST_FN_NOT_FOUND) {
                mbedtls_fprintf(stderr, "FAILED: FATAL TEST FUNCTION NOT FOUND\n");
                fclose(file);
                mbedtls_exit(2);
            } else {
                total_errors++;
            }
        }
        fclose(file);
    }

    if (outcome_file != NULL) {
        fclose(outcome_file);
    }

    mbedtls_fprintf(stdout,
                    "\n----------------------------------------------------------------------------\n\n");
    if (total_errors == 0) {
        mbedtls_fprintf(stdout, "PASSED");
    } else {
        mbedtls_fprintf(stdout, "FAILED");
    }

    mbedtls_fprintf(stdout, " (%u / %u tests (%u skipped))\n",
                    total_tests - total_errors, total_tests, total_skipped);

#if defined(MBEDTLS_MEMORY_BUFFER_ALLOC_C) && \
    !defined(TEST_SUITE_MEMORY_BUFFER_ALLOC)
#if defined(MBEDTLS_MEMORY_DEBUG)
    mbedtls_memory_buffer_alloc_status();
#endif
    mbedtls_memory_buffer_alloc_free();
#endif

    return total_errors != 0;
}


#line 217 "suites/main_test.function"

/*----------------------------------------------------------------------------*/
/* Main Test code */


/**
 * \brief       Program main. Invokes platform specific execute_tests().
 *
 * \param argc      Command line arguments count.
 * \param argv      Array of command line arguments.
 *
 * \return       Exit code.
 */
int main(int argc, const char *argv[])
{
#if defined(MBEDTLS_TEST_HOOKS)
    extern void (*mbedtls_test_hook_test_fail)(const char *test, int line, const char *file);
    mbedtls_test_hook_test_fail = &mbedtls_test_fail;
#if defined(MBEDTLS_ERROR_C)
    mbedtls_test_hook_error_add = &mbedtls_test_err_add_check;
#endif
#endif

    int ret = mbedtls_test_platform_setup();
    if (ret != 0) {
        mbedtls_fprintf(stderr,
                        "FATAL: Failed to initialize platform - error %d\n",
                        ret);
        return -1;
    }

    ret = execute_tests(argc, argv);
    mbedtls_test_platform_teardown();
    return ret;
}
