#!/bin/sh

echo '<html>
  <head>
    <style>
    * { margin: 0; padding: 0; width: 100%; height: 100%; }
    </style>
  </head>
  <body>
    <pre>'
cat index.csv
echo '    </pre>
  </body>
</html>'
