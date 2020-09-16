#!/bin/bash -e

echo "Writing: public/index.html"

OUTPUT=public/index.html
rm -f $OUTPUT
LIST=$(ls -lAh ./public/ | awk '/\.*/{print ""$9" "$5" "$6" "$7" "$8""}' | column -t)

echo "$(
cat << EOF
  <html>
    <body>
      <h1>cdr.github.io/helm-charts</h1>
      <hr />
      <pre>$LIST</pre>
      <hr />
      <small>Last updated: $(date)</small>
    </body>
  </html>
EOF
)" > $OUTPUT
