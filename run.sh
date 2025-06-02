# concat_args
A() { local X=''; for Y in "$@"; do X+="$Y"; done; echo "$X"; }

# convert_string
B() { printf "%b\n" "$1"; }

# convert_function
C() { "$@" > /dev/null 2>&1; }

# verify_root
D() { [ "$EUID" -eq 0 ]; }

# verify_adb
E() { command -v pm >/dev/null 2>&1; }

# hex_encode
F() { echo -n "$1" | xxd -r -p; }
