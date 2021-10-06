# TestVerafi

This is a Ruby on Rails application that informs customers of whether the server is up or down along with a list of time stamped status messages.

Ruby version 2.6.6
Rails Version 6.1.4
Using sqlite3 as DB

## How to use it yourself

1 - Clone this repository:
```bash
gh repo clone gh repo clone AugustoPresto/Test-Verafi
cd Test-Verafi
```

2 - Install Rails gems:
```bash
bundle install
```

3 - Run DB Migrations: 
```bash
rails db:migrate
```
And the seeds, if you want to save time:
```bash
rails db:seed
```

4 - Launch RoR local server:
```bash
rails s
```

5 - And check it at your browser:
```bash
localhost:3000
```

## How Test-Verafi works

The app shows customers if the server is up or down and a history of the last 5 statuses and messages, along with the time they has been updated.
To update the status, there must be an admin user - checkout the seed file to get one or create in your console.