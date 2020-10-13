for INFILE in ${!SCRIPT_INPUT_FILE_*};
do
    file=${!INFILE}
    if [ ${file: -4} == ".gyb" ]; then
        echo "Processing template $file"
        "${PROJECT_DIR}/support/gyb" --line-directive '' -o "${file%.gyb}" "$file"
    fi
done
