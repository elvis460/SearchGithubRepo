# Getting Started

* Ruby version: 2.5.4

* Rails version: 6.0.2.1


### Install required ruby gems

bundle the ruby gems

```
$ bundle install
```

may need to install dependencies

```
$ yarn install
```

## The website is working now.

```
$ rails s
```

# Running the tests

```
$ rspec
```

# API

***Now support only search by Repository name ***

## Search Github Repository

### Request ###

`GET /apis`

### Headers ###


### Params ###

```
{
  query: 'Ruby',
  page: 1
}
```

### Response ###

**Code:** `200 (OK)` **Content:** `JSON`

```json
{
        "total_count" => 142037,
        "incomplete_results" => false,
        "items" => [
          {
            "id" => 538746,
            "node_id" => "MDEwOlJlcG9zaXRvcnk1Mzg3NDY=",
            "name" => "ruby",
            "full_name" => "ruby/ruby",
            "private" => false,
            "owner" => {},
            "html_url" => "https://github.com/ruby/ruby",
            "description" => "The Ruby Programming Language [mirror]",
            "fork" => false,
            "url" => "https://api.github.com/repos/ruby/ruby",
            "stargazers_count" => 16562,
            "open_issues" => 152,
            "watchers" => 16562,
            "default_branch" => "master",
            "score" => 1.0
          }
        ]
      }
```
