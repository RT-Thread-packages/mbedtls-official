requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_GCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_256_GCM_SHA384,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: CHACHA20_POLY1305_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: AES_128_CCM_8_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -CAfile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_GCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_256_GCM_SHA384,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: CHACHA20_POLY1305_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: AES_128_CCM_8_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca_cat12.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_GCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_GCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp256r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp256r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp256r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp256r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp384r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp384r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp384r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp384r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp521r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp521r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp521r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,secp521r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,x25519,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,x25519,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,x25519,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,x25519,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,x448,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,x448,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,x448,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_256_GCM_SHA384,x448,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_256_GCM_SHA384 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: CHACHA20_POLY1305_SHA256,x448,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_CHACHA20_POLY1305_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp256r1_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp384r1.crt -key data_files/ecdsa_secp384r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp384r1_sha384 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp521r1.crt -key data_files/ecdsa_secp521r1.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs ecdsa_secp521r1_sha512 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->O: AES_128_CCM_8_SHA256,x448,rsa_pss_rsae_sha256" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/server2-sha256.crt -key data_files/server2.key -ciphersuites TLS_AES_128_CCM_8_SHA256 -sigalgs rsa_pss_rsae_sha256 -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_GCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-GCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp256r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp256r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp256r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp256r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp384r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp384r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp384r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp384r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp521r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp521r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp521r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,secp521r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,x25519,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,x25519,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,x25519,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,x25519,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,x448,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,x448,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,x448,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_256_GCM_SHA384,x448,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-256-GCM:+SHA384:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: CHACHA20_POLY1305_SHA256,x448,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+CHACHA20-POLY1305:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP256R1-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp384r1.crt --x509keyfile data_files/ecdsa_secp384r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP384R1-SHA384:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp521r1.crt --x509keyfile data_files/ecdsa_secp521r1.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-ECDSA-SECP521R1-SHA512:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->G: AES_128_CCM_8_SHA256,x448,rsa_pss_rsae_sha256" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/server2-sha256.crt --x509keyfile data_files/server2.key --priority=NONE:+AES-128-CCM-8:+SHA256:+AEAD:+SIGN-RSA-PSS-RSAE-SHA256:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_GCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-GCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-GCM-SHA256 ( id=4865 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1301 ) - TLS1-3-AES-128-GCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_256_GCM_SHA384,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-256-GCM-SHA384 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-256-GCM-SHA384 ( id=4866 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1302 ) - TLS1-3-AES-256-GCM-SHA384" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: CHACHA20_POLY1305_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-CHACHA20-POLY1305-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-CHACHA20-POLY1305-SHA256 ( id=4867 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1303 ) - TLS1-3-CHACHA20-POLY1305-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-SHA256 ( id=4868 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1304 ) - TLS1-3-AES-128-CCM-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp256r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp256r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp384r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp384r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp521r1,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,secp521r1,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,x25519,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,x25519,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp256r1_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp256r1_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x403" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0403 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp384r1_sha384" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp384r1.crt key_file=data_files/ecdsa_secp384r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp384r1_sha384 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x503" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0503 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,x448,ecdsa_secp521r1_sha512" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp521r1.crt key_file=data_files/ecdsa_secp521r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=ecdsa_secp521r1_sha512 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x603" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0603 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_X509_RSASSA_PSS_SUPPORT
run_test "TLS 1.3 m->m: AES_128_CCM_8_SHA256,x448,rsa_pss_rsae_sha256" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448 force_version=tls13 crt_file=data_files/server2-sha256.crt key_file=data_files/server2.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca_cat12.crt force_ciphersuite=TLS1-3-AES-128-CCM-8-SHA256 sig_algs=rsa_pss_rsae_sha256 curves=x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "server hello, chosen ciphersuite: TLS1-3-AES-128-CCM-8-SHA256 ( id=4869 )" \
         -s "received signature algorithm: 0x804" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "server hello, chosen ciphersuite: ( 1305 ) - TLS1-3-AES-128-CCM-8-SHA256" \
         -c "Certificate Verify: Signature algorithm ( 0804 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -C "received HelloRetryRequest message"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp256r1 -> secp384r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp256r1 -> secp521r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp256r1 -> x25519" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp256r1 -> x448" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp384r1 -> secp256r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp384r1 -> secp521r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp384r1 -> x25519" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp384r1 -> x448" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp521r1 -> secp256r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp521r1 -> secp384r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp521r1 -> x25519" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR secp521r1 -> x448" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR x25519 -> secp256r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR x25519 -> secp384r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR x25519 -> secp521r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR x25519 -> x448" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X448 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,x448" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR x448 -> secp256r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-256 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp256r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR x448 -> secp384r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-384 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp384r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR x448 -> secp521r1" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-521 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp521r1" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_openssl_tls1_3
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->O: HRR x448 -> x25519" \
         "$O_NEXT_SRV_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X25519 -msg -tls1_3 -accept $SRV_PORT -num_tickets 0 -no_resume_ephemeral -no_cache" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,x25519" \
         0 \
         -c "HTTP/1.0 200 ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp256r1 -> secp384r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp256r1 -> secp521r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp256r1 -> x25519" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp256r1 -> x448" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp384r1 -> secp256r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp384r1 -> secp521r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp384r1 -> x25519" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp384r1 -> x448" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp521r1 -> secp256r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp521r1 -> secp384r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp521r1 -> x25519" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR secp521r1 -> x448" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR x25519 -> secp256r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR x25519 -> secp384r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR x25519 -> secp521r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR x25519 -> x448" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,x448" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR x448 -> secp256r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp256r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR x448 -> secp384r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp384r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR x448 -> secp521r1" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp521r1" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->G: HRR x448 -> x25519" \
         "$G_NEXT_SRV_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --http --disable-client-cert --debug=4" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,x25519" \
         0 \
         -c "HTTP/1.0 200 OK" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp256r1 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp256r1 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp256r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp256r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp384r1 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp384r1 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp384r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp384r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp521r1 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp521r1 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp521r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR secp521r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR x25519 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR x25519 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR x25519 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR x25519 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 30 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR x448 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 23 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR x448 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 24 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR x448 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 25 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: HRR x448 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -c "received HelloRetryRequest message" \
         -c "selected_group ( 29 )"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp256r1 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-256:P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp256r1 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-256:P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp256r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-256:X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp256r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-256:X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp384r1 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-384:P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp384r1 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-384:P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp384r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-384:X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp384r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-384:X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp521r1 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-521:P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp521r1 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-521:P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp521r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-521:X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR secp521r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups P-521:X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR x25519 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X25519:P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR x25519 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X25519:P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR x25519 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X25519:P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR x25519 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X25519:X448 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR x448 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X448:P-256 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR x448 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X448:P-384 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR x448 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X448:P-521 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_openssl_tls1_3
run_test "TLS 1.3 O->m: Server HRR x448 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$O_NEXT_CLI_NO_CERT -cert data_files/ecdsa_secp256r1.crt -key data_files/ecdsa_secp256r1.key -groups X448:X25519 -msg -tls1_3 -CAfile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -s "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp256r1 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP256R1:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp256r1 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP256R1:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp256r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP256R1:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp256r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP256R1:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp384r1 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP384R1:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp384r1 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP384R1:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp384r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP384R1:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp384r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP384R1:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp521r1 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP521R1:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp521r1 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP521R1:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp521r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP521R1:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR secp521r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-SECP521R1:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR x25519 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X25519:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR x25519 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X25519:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR x25519 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X25519:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR x25519 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X25519:+GROUP-X448:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR x448 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X448:+GROUP-SECP256R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR x448 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X448:+GROUP-SECP384R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR x448 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X448:+GROUP-SECP521R1:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_gnutls_tls1_3
requires_gnutls_next_no_ticket
requires_gnutls_next_disable_tls13_compat
run_test "TLS 1.3 G->m: Server HRR x448 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$G_NEXT_CLI_NO_CERT --x509certfile data_files/ecdsa_secp256r1.crt --x509keyfile data_files/ecdsa_secp256r1.key --priority=NONE:+CIPHER-ALL:+MAC-ALL:+SIGN-ALL:+GROUP-X448:+GROUP-X25519:+VERS-TLS1.3:%NO_TICKETS --debug=4 localhost -p $SRV_PORT --single-key-share --x509cafile data_files/test-ca2.crt" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "HTTP/1.0 200 OK" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp256r1 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp256r1 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp256r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp256r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1,x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp384r1 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp384r1 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp384r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp384r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1,x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp521r1 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp521r1 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp521r1 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: x25519"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR secp521r1 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1,x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR x25519 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR x25519 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR x25519 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR x25519 -> x448" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519,x448" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x448(001e)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: x448"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR x448 -> secp256r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp256r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp256r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp256r1(0017)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp256r1 ( 17 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp256r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR x448 -> secp384r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp384r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp384r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp384r1(0018)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp384r1 ( 18 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp384r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR x448 -> secp521r1" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=secp521r1 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,secp521r1" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: secp521r1(0019)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: secp521r1 ( 19 )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: secp521r1"

requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
requires_config_enabled MBEDTLS_DEBUG_C
requires_config_enabled MBEDTLS_SSL_CLI_C
requires_config_enabled MBEDTLS_SSL_PROTO_TLS1_3
requires_config_enabled MBEDTLS_SSL_TLS1_3_COMPATIBILITY_MODE
run_test "TLS 1.3 m->m: Server HRR x448 -> x25519" \
         "$P_SRV_NO_CERT server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x25519 force_version=tls13 crt_file=data_files/ecdsa_secp256r1.crt key_file=data_files/ecdsa_secp256r1.key tls13_kex_modes=ephemeral cookies=0 tickets=0" \
         "$P_CLI server_addr=127.0.0.1 server_port=$SRV_PORT debug_level=4 ca_file=data_files/test-ca2.crt sig_algs=ecdsa_secp256r1_sha256 curves=x448,x25519" \
         0 \
         -s "Protocol is TLSv1.3" \
         -s "got named group: x25519(001d)" \
         -s "Verifying peer X.509 certificate... ok" \
         -c "Protocol is TLSv1.3" \
         -c "NamedGroup: x448 ( 1e )" \
         -c "NamedGroup: x25519 ( 1d )" \
         -c "Verifying peer X.509 certificate... ok" \
         -s "HRR selected_group: x25519"
