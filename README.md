# HotReads mk2.0

HotReads is an app for keeping track of the, well, hottest reads. It's pretty swell. It interfaces with [URL-LockBox](https://github.com/bermannoah/url-lockbox-2) to show you the latest and greatest in popular links.

![hotreads image](https://github.com/bermannoah/repo-images/blob/master/hot-reads.jpg?raw=true)

# Developing for HotReads mk2.0

## Contribution Guidelines

We're very welcoming of pull requests and issue/bug reports. We'd appreciate it if your submissions are fully tested - we're using RSpec/Capybara for our test framework, with Fabrication for generating assorted objects. You can find a pretty decent intro to the above [here](https://robots.thoughtbot.com/how-we-test-rails-applications).

As far as Turing students, staff, and alumni are concerned: The Turing School Code of Conduct most likely covers everything here, but you can check out our contributor guidelines by clicking [here](https://github.com/bermannoah/hot-reads-2/blob/master/GUIDELINES.md) for some basic rules to contributing to the project (and to open source in general) - this document is also helpful if you're not a current Turing student.

The best way to get in touch with us (because there's a rotating group of people maintaining the project) is probably by filing an issue report. Enjoy, and happy hacking! :)

#### Requirements

You will need:

1. Ruby (v.2.3.1)
2. Rails (v.5.0.0 or higher)
3. PostgreSQL

#### Setup

 - 1. Clone down the repo: `git clone https://github.com/bermannoah/hot-reads-2.git`
 - 2. `cd` into the repo: `cd hot-reads-2`
 - 3. Run `bundle install` to pull down all the necessary gems.
 - 4. Because the app uses phantomjs for javascript testing you will need to run `npm install phantomjs -g` if you don't already have it installed.
 - 5. Assuming everything bundled properly, run `rake db:setup`. 
 - 6. Once the migrations complete, run `rspec` to make sure everything is all ready to go.

#### Testing Top Tips:

You can then write capybara feature tests and add `js: true` tag to each test the has JavaScript.  Your tests will execute and recognize your JavaScript.

If you're having problems troubleshooting asynchronous actions (like DOM changes after an AJAX request), [peruse this section of Capybara's docs](https://github.com/teamcapybara/capybara#asynchronous-javascript-ajax-and-friends)

## License

HotReads mk2.0 is released under the MIT license, which is available [here](https://github.com/bermannoah/hot-reads-2/blob/master/LICENSE.txt).

## Contributor/s

 - [Noah Berman](https://github.com/bermannoah)

 1608BE Turing School of Software and Design