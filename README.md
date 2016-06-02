# Let's Handshake 
A tool for TLS Handshake PoC & DoS [![Build Status](https://travis-ci.org/0x7E/letshandshake.svg?branch=master)](https://travis-ci.org/0x7E/letshandshake)

    letshandshake needs to be linked with -levent_core from libevent2 library.
    letshandshake does *not* use or require:
    - Client-side cryptography,
    - Threads,
    - SSL session renegotiation.
    As the result single letshandshake can saturate a fast SSL accelerator.
        
