getcitoken
==========

Retrieves Gitlab-CI Token for Automated Runner Authentication

```
user ~/getcitoken % ruby getcitoken.rb < config.yml
ba46f9b37eadd14a77ad
```

Output is logged to getcitoken.log

## Requirements

- mechanize & logger gems
- ruby 1.9 or newer

## Usage

1) See config.yml.example to see variable names for un/pw and gitlab-ci URL

2) Run ```ruby getcitoken.rb < config.yml```

3) Receive token and be forever happy!


Docker image
============

The Dockerfile is used to build a container in order to use this
tool without a Ruby installation. The image can be used read-only,
it will output information logs to stderr and the token to stdout.
