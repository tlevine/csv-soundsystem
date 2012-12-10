## One-time website configuration

Make the `www.csvsoundsystem.com` bucket.

Set the bucket policy to this.

    {
        "Version": "2008-10-17",
        "Statement": [
            {
                "Sid": "PublicReadForGetBucketObjects",
                "Effect": "Allow",
                "Principal": {
                    "AWS": "*"
                },
                "Action": "s3:GetObject",
                "Resource": "arn:aws:s3:::www.csvsoundsystem.com/*"
            }
        ]
    }

Set the `Index Document` to `index.csv`.

Make an A record pointing `csvsoundsystem.com` to [108.174.51.19](http://redirect.thomaslevine.com/).

Make a CNAME record pointing `www.csvsoundsystem.com` to `csvsoundsystem.com.s3-website-us-west-2.amazonaws.com`.

## Uploading `index.csv` to S3

Upload the file.

Make `index.csv` public. (In the web console, right-click on it.)

Set the following metadata for `index.csv`.

    Content-Type: text/csv
    Content-Disposition: attachment; filename=csvsoundsystem.csv

If you haven't yet configured DNS, you can test with this address:
[http://www.csvsoundsystem.com.s3-website-us-west-2.amazonaws.com/](http://www.csvsoundsystem.com.s3-website-us-west-2.amazonaws.com/)
