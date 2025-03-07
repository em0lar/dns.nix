#
# SPDX-FileCopyrightText: 2019 Kirill Elagin <https://kir.elagin.me/>
#
# SPDX-License-Identifier: MPL-2.0 or MIT
#

{ lib }:

{
  inherit (import ./zone.nix { inherit lib; }) zone subzone;
  record = import ./record.nix { inherit lib; };
  records = import ./records { inherit lib; };
}
