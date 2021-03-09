# scripts
One-off scripts, and things I find interesting.

## Heroku sub-domain takeover

```
cat heroku.sh >> ~/.bashrc
source ~/.bashrc
```
### Usage

Check ```CNAME``` if its ```testrandomgibberishvalue.herokuapp.com``` and says ```No such app```

This might be vulnerable to takenover, this bash alias can be used to verify the same:

```
heroku testrandomgibberishvalue
```
