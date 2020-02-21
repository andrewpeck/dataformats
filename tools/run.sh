SHA="$(git rev-parse HEAD)"
echo "CI SHA: $CI_COMMIT_SHA"
echo "Job SHA: $SHA"
if [ "$CI_COMMIT_SHA" != "$SHA" ]; then
  python l0mdt_dataFormat.py -i l0mdt_buses.csv -r $SHA
fi
