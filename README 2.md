# pub-smoke
A Cucumber Smoke Test for Pubs(erv)

![pub-smoke](https://github.com/nature/pub-smoke/blob/master/pub-smoke.jpg)

## Setup

You can use pub-smoke in two scenarios: as a **QA** or as a **Dev**.
QA mode just requires VirtualBox installed and a pub-smoke virtual machine image.
Dev mode allow you to implement new check scenarios and to build pub-smoke virtual machines.

### QA mode

Once you have VirtualBox installed and  have obtained a copy of a pub-smoke virtual machine launch it double clicking the `pub-smoke.ova` image.
This will add the virtual machine on VirtualBox.
Launch the virtual machine on VirtualBox.
You'll get a  terminal login screen, use this credentials:

    login: vagrant
    password: vagrant

After login, launch the tests as described in the section below, you can use the browser to view the tests results using this url: http://localhost:8081

Every error will provide a link to a screenshot of the failing page.

### Dev mode

Assuming that you're on a Mac and you have installed:

* Xcode Command Line Tools - install it from the terminal using `xcode-select --install`
* [Homebrew](http://brew.sh)

You then need to install qt

    brew install qt

and launch the tests as explained in the section below.

If you also want to build Virtual machines you'll also need [vagrant](https://www.vagrantup.com)

An Ansible playbook to easily create a virtual machine is available.
Keep in mind Ansible is not widely adopted in Nature, so for now you'll need to checkout a different branch

    brew install ansible
    git checkout vagrant
    vagrant up


## Launch the smoke test script

To launch the smoke test suite use the following command:


    smoke-test-runner -t test


This launch the snoke test against the test environment. To test the live site use `-t live`.

If you want to update the Git repository of scenarios before launching the test add `-g` like this:

    smoke-test-runner -g -t test

A Some of the feature can be disabled using one of these tags: `@wip`, `@ignore` or `@pending`. If you want to test also these features use:

    smoke-test-runner -t test -p include-disabled

Check all the options available with `smoke-test-runner -h`.

## List of scenarios


```
-------------
Features List
-------------

Article DOIs
------------
  Doi for a Maestro journal article
  Doi for a Foxtrot jornal article

Subscription Article figures navigation
---------------------------------------
  A user can see the full size figure on Mosaic
  A user can see the full size figure on Classic
  A user can see the figures index page on Classic
  A user cannot see the figures index page on Mosaic
  A visitor will be redirect to the article page if browsing the full size figure url

Metadata
--------
  A robot can fetch article related metadata on Mosaic
  A robot will not find article related metadata on Mosaic not-article pages
  A robot will find global Webtrends metadata on the Mosaic home page
  A robot can fetch article related metadata on Classic
  A robot will not find article related metadata on Classic not-article pages
  A robot will find global Webtrends metadata on the Classic home page

Subscription Articles paywall
-----------------------------
  A visitor can see the paywall on Mosaic
  A visitor can see the Login Link to Athens on Mosaic

Article Pdf download
--------------------
  A user can download the Article pdf on Mosaic
  A visitor cannot download the Article pdf on Mosaic
  A visitor cannot use the full url to download the Article pdf
  A logged in user can download the Article pdf on Classic
  A visitor cannot download the Article pdf on Classic

Articles RIS files
------------------
  A visitor can download the article RIS file on Mosaic
  A visitor can download the article RIS file on Classic
  A visitor can download the article references RIS file on Mosaic
  A visitor can download the article references RIS file on Classic

The journal RSS feed
--------------------
  A visitor wants to subscribe to the RSS feed for a Mosaic Journal
  A visitor wants to subscribe to the RSS feed for a Classic Journal
  A visitor wants to subscribe to the RSS feed for a Classic Journal from the article page

The Journal sitemap
-------------------
  A Robot can fetch the Journal sitemp.xml

Article Supplementary info files
--------------------------------
  A visitor can download a supplementary info file on Mosaic
  A visitor can download a supplementary info file on Classic

Article associated links
------------------------
  A visitor can see an article associated link in the Mosaic reading companion
  A visitor can see an article associated link in the Classic side bar
  A visitor can see an Erratum link in Mosaic
  A visitor can see an Erratum link in Classic

Beta opt in and out
-------------------
  A visitor opting in to Mosaic
  A visitor opting in to Classic

Foxtrot redirects
-----------------
  redirect a foxtrot article to a foxtrot style url

Proofing articles
-----------------
  A user can proof a Mosaic article
  A user can proof a Classic article
  A visitor cannot proof a Mosaic article
  A visitor cannot proof a Classic article

Readcube Article
----------------
  A user can read the Article on ReadCube
  A user visiting a free article .epdf url with javascript disabled  will download the pdf (PENDING)
  A user visiting a non-free article .epdf url with javascript disabled  will be redirected to the article (PENDING)
  A user using the .epdf suffix will see the ReadCube version of the Article if has javascript enabled (PENDING)
```
You can produce this list with `./smoke-test-runner -l`
