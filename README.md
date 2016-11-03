# dtls-coap-dissector

A dissector in charge of decoding DTLS decrypted payload into CoAP.

`wireshark -X lua_script:dtls-coap-hdissector.lua -r encrypted-capture.pcap`
