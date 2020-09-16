# Publishing

Here are the steps for publishing charts:

1. Update `./charts/*/Chart.yaml:version` property.
1. Run `./script/build.sh`. This will produce a new TAR file and update `./public/index.{yaml,html}` files.
1. Add new files and commit changes.
1. Push to GitHub.
