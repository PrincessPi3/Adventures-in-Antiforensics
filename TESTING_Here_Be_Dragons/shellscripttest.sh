#!/bin/bash
set +e # dont stop on errror. defau,lt shit but fuckitweball set explicitly to prevent issues
# set +E explicity set trap, and continue on error

# silence all ouitputs

## using nromie /dev/null and exec
### exec &>/dev/null # silent time :pope:

## even fancier split difference using processs substitution and trap usin trap to /dev/null
## return zero eve n if an error happens cuz fck dat shit usin trap
exec &> >(cat > /dev/null) # output to /dev/null
trap 'exit 0' EXIT # exit zero on error 

# sum bullshit testy shit lmfao
sum_var="i learned all my sex monves in china"

# temp files and pathes
temp_file=$(mktemp) # creates and returns sum shit like filw /tmp/tmp.FcFzhKg55B
temp_dir=$(mktemp -d) # same buT directory
temp_file_name=$(mktemp -u) # dry run -u to not create file just return path
temp_dir_name=$(mktemp -u -d) # dry run for dirs

echo dildoz
echo dildozz
echo dildozzz
echo good ls
ls .
echo bad ls 0
ls /notherelol
echo bad ls 1
ls /dildoz
echo "$sum_var"
unset $sum_var # dont forget to use ya fuckin unsets jeez
echo "$sum_var"

# maek a temp file/dir go byebye
dd if=/dev/zero of="$temp_file" # zero it out
rm -f "$temp_file" # delete file no prompt -f
# rm -Rf "$temp_file" # delete dir -r it no prompt -f
unset $temp_file # empty the var
# todo: test unsettin mem manuqally with /dev/zero

# /sum bullshit testy shit lmfao

# return zero so no silly concernz :3
exit 0 # no error retcode :pepesmirk: