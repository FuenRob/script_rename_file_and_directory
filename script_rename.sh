# Replace name in directory
while IFS='' read -r -d '' fname ; do
   nname="${fname##*/}"
   mv -v -n "${fname}"  "${fname%/*}/${nname//[[:space:]]/_}"
done < <(find "$(pwd)"  -name "* *" -type d  -print0)

# Replace name in file
while IFS='' read -r -d '' fname ; do
   nname="${fname##*/}"
   mv -v -n "${fname}"  "${fname%/*}/${nname//[[:space:]]/_}"
done < <(find "$(pwd)"  -name "* *" -type f  -print0)

