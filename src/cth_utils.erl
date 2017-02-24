-module(cth_utils).

-export([
    hstr/1
]).

hstr(Bin) when is_binary(Bin) ->
  << <<(hex(A)), (hex(B))>> || <<A:4,B:4>> <= Bin >>.

-compile({inline, [hex/1]}).

hex(0)  -> $0;
hex(1)  -> $1;
hex(2)  -> $2;
hex(3)  -> $3;
hex(4)  -> $4;
hex(5)  -> $5;
hex(6)  -> $6;
hex(7)  -> $7;
hex(8)  -> $8;
hex(9)  -> $9;
hex(10) -> $a;
hex(11) -> $b;
hex(12) -> $c;
hex(13) -> $d;
hex(14) -> $e;
hex(15) -> $f.
