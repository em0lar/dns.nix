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
  rtype = "TXT";
  options = {
    data = mkOption {
      type = types.str;
      example = "favorite drink=orange juice";
      description = "Arbitrary information";
    };
  };
  dataToString = {data, ...}: ''"${toString builtins.split ".{255}" data}"'';
  fromString = data: { inherit data; };
}
