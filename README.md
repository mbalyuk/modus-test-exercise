# modus-test-exercise

A very very basic example framework in Ruby, using Cucumber, Capybara and Site Prism (for Page Objects),
and reporting.

## What this is / What's included....

 1. A basic framework for testing websites, using Ruby.
 2. Framework based on Capybara, Site Prism  and Cucumber
 3. A trivial example of encapsulating functionality using page objects
 4. Some basic control regarding choosing a browser at runtime
 5. Simple intro into Rake tasks.
 5. Added simple html report


## Test plan 

You can find test plan here https://drive.google.com/open?id=1nCkqlRhzODSVWaII_AKeqj5H_k8VuIwO

## Instructions/Config required prior to use...

1. Please ensure that you have the latest Chromedriver installed and setup https://sites.google.com/a/chromium.org/chromedriver/downloads
2. Clone repository
3. Open project and run rake task

## Example commands to run a specific feature file...

After cd'ing into the 'modus-test-exercise' directory...

```
rake add_record_chrome
```
```
rake verify_budget_table_chrome
```

Note that the default profile will choose Chrome as the default browser.


# Instructions

To list the available tasks...
```
# rake -T
```
