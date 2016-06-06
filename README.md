Let's Handshake [![Build Status](https://travis-ci.org/0x7E/letshandshake.svg?branch=master)](https://travis-ci.org/0x7E/letshandshake) [![Code Health](https://landscape.io/github/0x7E/letshandshake/master/landscape.svg?style=flat)](https://landscape.io/github/0x7E/letshandshake/master) ============
A tool for TLS Handshake PoC & DoS 

    letshandshake needs to be linked with -levent_core from libevent2 library.
    letshandshake does *not* use or require:
    - Client-side cryptography,
    - Threads,
    - SSL session renegotiation.
    As the result single letshandshake can saturate a fast SSL accelerator.
        
