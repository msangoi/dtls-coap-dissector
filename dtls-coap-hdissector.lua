local original_coap_dissector = Dissector.get("coap")

function h_dissector(buffer,pinfo,tree) 
  original_coap_dissector:call(buffer, pinfo, tree)
  return true
end

-- register an heuristic dissector in charge of decoding all decrypted payload as CoAP data
coaps_proto = Proto("coaps","CoAP over DTLS")
coaps_proto:register_heuristic("dtls", h_dissector)

