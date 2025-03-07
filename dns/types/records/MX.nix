#
# SPDX-FileCopyrightText: 2019 Kirill Elagin <https://kir.elagin.me/>
#
# SPDX-License-Identifier: MPL-2.0 or MIT
#

{ lib }:

let
  inherit (lib) mkOption types;

in

{
  rtype = "MX";
  options = {
    preference = mkOption {
      type = types.ints.u16;
      example = 10;
      description = "The preference given to this RR among others at the same owner. Lower values are preferred";
    };
    exchange = mkOption {
      type = types.str;
      example = "smtp.example.com.";
      description = "A <domain-name> which specifies a host willing to act as a mail exchange for the owner name";
    };
  };
  dataToString = {preference, exchange, ...}:
    "${toString preference} ${exchange}";
}
