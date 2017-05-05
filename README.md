# Matchup

This rails app is an easy way to randomly assign teams of 2 people on a daily basis.

<img width="823" alt="screen shot 2017-05-05 at 18 16 35" src="https://cloud.githubusercontent.com/assets/15831300/25754415/56f30acc-31bf-11e7-97e4-1704e335aa7c.png">

## Steps

These are the steps I followed when working on this app

1. Setting up project
2. Adding devise
3. Adding test
4. Adding navbar
5. Styling views
6. Adding admin & teacher
7. Adding seeds
8. Adding test again 
9. Adding factories and faker
10. Adding Promote & Demote
11. Adding generate matches

## Databse Structure

1. User
  
  * devise-defaults +
  * admin:boolean
  * teacher:boolean
  
2. Profile

  * first_name:string
  * last_name:string
  * photo:string
  * user_id:integer
  
3. Match

  * match_id:integer
  * user_id:integer(belongs_to :user)
  * date:date
  
## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:Cesurhan/matchup.git
cd matchup
bundle install
rils db:create db:migrate db:seed
rails server
```

## Related documentation

For more information about using Devise, see these links:

* [Devise](https://github.com/plataformatec/devise)
