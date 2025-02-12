PYINK_COMMAND="pyink --pyink-use-majority-quotes --pyink-indentation=2 --preview --unstable --line-length 80
      --extend-exclude .downloads --extend-exclude '\.pyi' --extend-exclude circt/ --check ./"

echo "Testing python formatting with ${PYINK_COMMAND}"
${PYINK_COMMAND}
PYTHON_FORMAT_RESULT=$?

if [[ ${PYTHON_FORMAT_RESULT} != 0 ]]; then
  echo "Python formatting issues found." 
  echo "To apply formatting automatically, run: ./format.sh"
fi

if [[ ${PYTHON_FORMAT_RESULT}  != 0 ]]
then
  exit 1
fi