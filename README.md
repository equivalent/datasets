Original repo https://github.com/OpenDataSk/datasets

[master](https://github.com/equivalent/datasets/tree/master) is up to date with origin `OpenDataSk/datasets` [master](https://github.com/OpenDataSk/datasets) with:

```
# git remote add upstream git@github.com:OpenDataSk/datasets.git
git pull upstream master
```

My [fork repo](https://github.com/equivalent/datasets) branch `join_script` contains a script that will join `municipalities_sk.json` and
`postalcodecoordinates_sk.json` together

Just run `ruby run.rb` it will generate `joined.json` which is
gitignored.

> Ruby 2.7.2 recommended

I'm then manually renaming the file to `generated.json`
which is commited and pushed.

--------------------------------

original Readme:


# Various assorted datasets

Various assorted datasets from or about Slovakia.

We prefer data to be published properly, but sometimes "properly" is for
various reasons not possible, so then we will use this repository.

## municipalities_sk.json

[municipalities_sk.json](municipalities_sk.json) contains names of
municipalities along with postal code (PSČ) of the municipality.

More information in Slovak: https://github.com/OpenDataSk/datasets/pull/1

Source: Stano Bocinec / Slovensko.Digital Slack

License: CC0

Note: This serves as workaround for this: https://github.com/OpenDataSk/data-requests/issues/10

## postalcodecoordinates_sk.json

[postalcodecoordinates_sk.json](postalcodecoordinates_sk.json) contains GPS
coordinates for postal code (PSČ) of Slovak municipalities. Postal codes
match what is used in `municipalities_sk.json`.

More information in Slovak: https://github.com/OpenDataSk/datasets/pull/1

Source: Stano Bocinec / Slovensko.Digital Slack

License: CC0

Note: This serves as workaround for this: https://github.com/OpenDataSk/data-requests/issues/11
