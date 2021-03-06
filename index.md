# Covid-19: Personal Observations
By Jim Conner 05/2020

## TL;DR

We're living in unprecedented times right now. Below, one can see my own
investigation into the numbers between Covid deaths and Influenza deaths. These
numbers, in my estimation, are really important! I explain below. But for now if
you're just interested in seeing the numbers:

## Three full sets of sample data:

### The numbers as of 2020-07-28
Note that a rather ugly bug was fixed tonight which inadvertently misrepresented
the death toll numbers for both covid and flu sourced from the 4th CDC source
endpoint. That bug is now fixed and this data set represents the correct values.
Moreover, I've added an addendum entry to the first two data sets' source
4 death values but I left the incorrect values in place for the record.

```
{
    "2009-10" => 192152,
    "2010-11" => 198253,
    "2011-12" => 182065,
    "2012-13" => 200208,
    "2013-14" => 187417,
    "2014-15" => 201857,
    "2015-16" => 181825,
    "2016-17" => 186575,
    "2017-18" => 195386,
    "2018-19" => 87074
}
```

Provisional Covid Deaths source 1 from r8kw-7aab
```
{
    "2020-02-01T00:00:00.000-2020-07-28T00:00:00.000" => {
            :covid_deaths => 134710,
        :influenza_deaths => 6570
    }
}
```

Provisional Covid Deaths source 2 from uggs-hy5q
```
{
    "2020-02-01T00:00:00.000-2020-07-28T00:00:00.000" => {
            :covid_deaths => 130250,
        :influenza_deaths => 6553
    }
}
```

Provisional Covid Deaths source 3 from hc4f-j6nb
```
{
    "2020-02-01T00:00:00.000-2020-07-28T00:00:00.000" => {
            :covid_deaths => 310690,
        :influenza_deaths => 52389
    }
}
```

Provisional COVID-19 Death Counts by Sex, Age, in the U.S. (source 4) from 9bhg-hcku
Statistics for death type: influenza
```
All
        Under 1 year                   => 14
        1-4 years                      => 41
        5-14 years                     => 49
        15-24 years                    => 51
        25-34 years                    => 149
        35-44 years                    => 242
        45-54 years                    => 571
        55-64 years                    => 1214
        65-74 years                    => 1421
        75-84 years                    => 1446
        85 years and over              => 1355
        All Ages                       => 6553
Male
        Under 1 year                   => 8
        1-4 years                      => 25
        5-14 years                     => 21
        15-24 years                    => 27
        25-34 years                    => 76
        35-44 years                    => 129
        45-54 years                    => 338
        55-64 years                    => 690
        65-74 years                    => 789
        75-84 years                    => 719
        85 years and over              => 552
        All ages                       => 3374
Female
        Under 1 year                   => 6
        1-4 years                      => 16
        5-14 years                     => 28
        15-24 years                    => 24
        25-34 years                    => 73
        35-44 years                    => 113
        45-54 years                    => 233
        55-64 years                    => 523
        65-74 years                    => 632
        75-84 years                    => 727
        85 years and over              => 803
        All ages                       => 3178
Unknown
        All ages                       => 1

Statistics for death type: covid19
All
        Under 1 year                   => 11
        1-4 years                      => 9
        5-14 years                     => 16
        15-24 years                    => 190
        25-34 years                    => 935
        35-44 years                    => 2411
        45-54 years                    => 6566
        55-64 years                    => 15880
        65-74 years                    => 27167
        75-84 years                    => 34399
        85 years and over              => 42666
        All Ages                       => 130250
Male
        Under 1 year                   => 6
        1-4 years                      => 4
        5-14 years                     => 13
        15-24 years                    => 122
        25-34 years                    => 640
        35-44 years                    => 1692
        45-54 years                    => 4570
        55-64 years                    => 10455
        65-74 years                    => 16858
        75-84 years                    => 18734
        85 years and over              => 16581
        All ages                       => 69675
Female
        Under 1 year                   => 5
        1-4 years                      => 5
        5-14 years                     => 3
        15-24 years                    => 68
        25-34 years                    => 295
        35-44 years                    => 719
        45-54 years                    => 1996
        55-64 years                    => 5425
        65-74 years                    => 10308
        75-84 years                    => 15664
        85 years and over              => 26082
        All ages                       => 60570
Unknown
        All ages                       => 5


covid_deaths               => 130250
influenza_deaths           => 6553
```

### The numbers as of 2020-05-08
Note the date time stamp in the output. That is a range date showing that the
data retrieved from the API was data collected from February 1, 2020 to the date
I ran this script which was May 5, 2020.

Flu deaths from 2009 to 2019 by season
```
{
    "2009-10" => 192152,
    "2010-11" => 198253,
    "2011-12" => 182065,
    "2012-13" => 200208,
    "2013-14" => 187417,
    "2014-15" => 201857,
    "2015-16" => 181825,
    "2016-17" => 186575,
    "2017-18" => 195386,
    "2018-19" => 87074
}
```

Provisional Covid Deaths source 1 from r8kw-7aab
```
{
    "2020-02-01T00:00:00.000-2020-05-08T00:00:00.000" => {
            :covid_deaths => 45632,
        :influenza_deaths => 6000
    }
}
```


Provisional Covid Deaths source 2 from uggs-hy5q
```
{
    "2020-02-01T00:00:00.000-2020-05-08T00:00:00.000" => {
            :covid_deaths => 44016,
        :influenza_deaths => 5971
    }
}
```

Provisional Covid Deaths source 3 from hc4f-j6nb
```
{
    "2020-02-01T00:00:00.000-2020-05-08T00:00:00.000" => {
            :covid_deaths => 310690,
        :influenza_deaths => 52389
    }
}
```


Provisional COVID-19 Death Counts by Sex, Age, in the U.S. (source 4) from 9bhg-hcku
Statistics for death type: influenza
```
All Sexes
 Under 1 year                   => 11
 1-4 years                      => 33
 5-14 years                     => 41
 15-24 years                    => 41
 25-34 years                    => 133
 35-44 years                    => 210
 45-54 years                    => 522
 55-64 years                    => 1108
 65-74 years                    => 1305
 75-84 years                    => 1328
 85 years and over              => 1239
All Sexes Total
 All Ages                       => 5971
Male
 Under 1 year                   => 5
 1-4 years                      => 19
 5-14 years                     => 17
 15-24 years                    => 22
 25-34 years                    => 69
 35-44 years                    => 112
 45-54 years                    => 310
 55-64 years                    => 633
 65-74 years                    => 719
 75-84 years                    => 657
 85 years and over              => 503
Male Total
 Male, all ages                 => 3066
Female
 Under 1 year                   => 6
 1-4 years                      => 14
 5-14 years                     => 24
 15-24 years                    => 19
 25-34 years                    => 64
 35-44 years                    => 98
 45-54 years                    => 212
 55-64 years                    => 475
 65-74 years                    => 586
 75-84 years                    => 671
 85 years and over              => 736
Female Total
 Female, all ages               => 2905
Unknown
 All ages                       => 0

Statistics for death type: covid19
All Sexes
 Under 1 year                   => 4
 1-4 years                      => 2
 5-14 years                     => 4
 15-24 years                    => 48
 25-34 years                    => 317
 35-44 years                    => 796
 45-54 years                    => 2262
 55-64 years                    => 5422
 65-74 years                    => 9359
 75-84 years                    => 12026
 85 years and over              => 13776
All Sexes Total
 All Ages                       => 44016
Male
 Under 1 year                   => 2
 1-4 years                      => 1
 5-14 years                     => 3
 15-24 years                    => 32
 25-34 years                    => 222
 35-44 years                    => 577
 45-54 years                    => 1612
 55-64 years                    => 3621
 65-74 years                    => 5918
 75-84 years                    => 6801
 85 years and over              => 5848
Male Total
 Male, all ages                 => 24637
Female
 Under 1 year                   => 2
 1-4 years                      => 1
 5-14 years                     => 1
 15-24 years                    => 16
 25-34 years                    => 95
 35-44 years                    => 219
 45-54 years                    => 650
 55-64 years                    => 1801
 65-74 years                    => 3441
 75-84 years                    => 5225
 85 years and over              => 7927
Female Total
 Female, all ages               => 19378
Unknown
 All ages                       => 1


covid_deaths               => 176063 (Should have read: 44016)
influenza_deaths           => 23884 (Should have read: 5971)
```

### The numbers as of 2020-05-15

Flu deaths from 2009 to 2019 by season
```
{
    "2009-10" => 192152,
    "2010-11" => 198253,
    "2011-12" => 182065,
    "2012-13" => 200208,
    "2013-14" => 187417,
    "2014-15" => 201857,
    "2015-16" => 181825,
    "2016-17" => 186575,
    "2017-18" => 195386,
    "2018-19" => 87074
}
```


Provisional Covid Deaths source 1 from r8kw-7aab
```
{
    "2020-02-01T00:00:00.000-2020-05-15T00:00:00.000" => {
            :covid_deaths => 56977,
        :influenza_deaths => 6148
    }
}
```


Provisional Covid Deaths source 2 from uggs-hy5q
```
{
    "2020-02-01T00:00:00.000-2020-05-15T00:00:00.000" => {
            :covid_deaths => 54861,
        :influenza_deaths => 6110
    }
}
```


Provisional Covid Deaths source 3 from hc4f-j6nb
```
{
    "2020-02-01T00:00:00.000-2020-05-15T00:00:00.000" => {
            :covid_deaths => 310690,
        :influenza_deaths => 52389
    }
}
```


Provisional COVID-19 Death Counts by Sex, Age, in the U.S. (source 4) from 9bhg-hcku
Statistics for death type: influenza

```
All Sexes
 Under 1 year                   => 11
 1-4 years                      => 35
 5-14 years                     => 43
 15-24 years                    => 42
 25-34 years                    => 135
 35-44 years                    => 214
 45-54 years                    => 529
 55-64 years                    => 1136
 65-74 years                    => 1334
 75-84 years                    => 1357
 85 years and over              => 1274
All Sexes Total
 All Ages                       => 6110
Male
 Under 1 year                   => 5
 1-4 years                      => 20
 5-14 years                     => 18
 15-24 years                    => 22
 25-34 years                    => 70
 35-44 years                    => 115
 45-54 years                    => 313
 55-64 years                    => 648
 65-74 years                    => 737
 75-84 years                    => 669
 85 years and over              => 518
Male Total
 Male, all ages                 => 3135
Female
 Under 1 year                   => 6
 1-4 years                      => 15
 5-14 years                     => 25
 15-24 years                    => 20
 25-34 years                    => 65
 35-44 years                    => 99
 45-54 years                    => 216
 55-64 years                    => 488
 65-74 years                    => 597
 75-84 years                    => 688
 85 years and over              => 756
Female Total
 Female, all ages               => 2975
Unknown
 All ages                       => 0

Statistics for death type: covid19
All Sexes
 Under 1 year                   => 4
 1-4 years                      => 2
 5-14 years                     => 6
 15-24 years                    => 59
 25-34 years                    => 388
 35-44 years                    => 973
 45-54 years                    => 2772
 55-64 years                    => 6725
 65-74 years                    => 11524
 75-84 years                    => 14930
 85 years and over              => 17478
All Sexes Total
 All Ages                       => 54861
Male
 Under 1 year                   => 2
 1-4 years                      => 1
 5-14 years                     => 4
 15-24 years                    => 39
 25-34 years                    => 270
 35-44 years                    => 710
 45-54 years                    => 1970
 55-64 years                    => 4490
 65-74 years                    => 7259
 75-84 years                    => 8369
 85 years and over              => 7273
Male Total
 Male, all ages                 => 30387
Female
 Under 1 year                   => 2
 1-4 years                      => 1
 5-14 years                     => 2
 15-24 years                    => 20
 25-34 years                    => 118
 35-44 years                    => 263
 45-54 years                    => 802
 55-64 years                    => 2235
 65-74 years                    => 4265
 75-84 years                    => 6561
 85 years and over              => 10204
Female Total
 Female, all ages               => 24473
Unknown
 All ages                       => 1


covid_deaths               => 219443 (should have read: 54861)
influenza_deaths           => 24440 (should have read: 6110)
```

# My Personal Study

## Purpose
I wanted to scrutinize the numbers myself because something wasn't adding up
with respect to the flu deaths in the 2019-2020 season compared to Covid deaths.

I was able to obtain a CDC API key (links are in the `flu-status` script and in
the references section at the end of this document.

These are free, publically available APIs, which I assume are maintained
by the CDC given the domain is owned by cdc.gov.

Here's the code: https://github.com/notjames/jimconn-shell/blob/master/projects/covid/sources/bin/flu-stats

## About the numbers
To date, I've taken two samples of the numbers from the CDC. The Flu deaths
seasonal numbers are, from what I understand from the CDC source, seasonal
numbers.

### Flu Numbers
One thing I take away from the flu numbers is that they are generally the same
year to year since 2009 until the 2018-2019 season where they drop off
significantly, which I find confusing. The drop off simply does not make sense.
To the best of my knowledge, nothing changed with vaccination numbers or
potency. I could pull the vaccination numbers, which maybe I will. Currently,
I have the numbers showing an approximate average of 200k deaths per season in
the United States since 2009.

### Covid numbers
I still really don't know what to make about the covid numbers. Here's a brief
explanation. I was able to find four sources in the CDC API-fronted database
that show Covid deaths for the United States nation wide. One of them provided
a breakdown of the affected demographics by age by gender.

None of the numbers between the four data match up. All of the flu deaths shown
by the three sources are wildly lower than the last ten seasons shown above.
Source 3 and source 4 show wildly high covid deaths compared to any information
open to the public besides these.

### Personal Take Aways
The covid data just can't be believed.

  1. The numbers don't match between each source.
  1. The numbers seem wildly inconceivable.

## Official Inferences
I haven't made any official inferences yet. I've been trying to simply grab the
numbers and keep them as accurate as possible from the source. My initial thoughts
are that I'm not convinced that the CDC is doing a good job of keeping the numbers
consistent between the different endpoints. I am open to a couple of possibilities
here.

  1. The publically available APIs are not the same as the ones used internally
  at the CDC
  1. The APIs are the same and there are multiple people maintaining different
  projects
  1. I don't understand the difference between the like-named endpoints and thus
  my understanding of what the mis-matched numbers represent is simply unknown
  1. something else I just haven't thought of yet

These kinds of inconsistencies make it super easy to believe we Americans are
being lied to. I'm going to keep an objective perspective on this project until
I can get more obvious and truthful details. This project is in its infantile
status and so I can't make any reliable assumptions yet.

## Obvious Conclusions
The only conclusion I can make so far is that the numbers between the sources
don't add up...at all. By "add up," I don't mean mathematically. I mean
logically. **The numbers between the API sources don't seem to match up**. These
numbers don't match up to what we're told by the media. Things just aren't adding
up. So, I need to research that more.

These mismatches cause me to be very leary.

## Personally Held Beliefs
Given the fact that:

  1. the source of truth doesn't even provide reliable impirical data
  1. there's enough information which I find to be reasonable enough to
     determine factual indicates that we are being lied to by mainstream media
     and local governments and
  1. the fact that the logic comparing covid-affected deaths to that of
     flu-affected deaths would indicate that flu is by far a greater killer of
     people just by the mere fact that flu generally kills people from all ages
     vs covid killing mostly unhealthy or geriatric patients

I personally believe that we're being lied to by media and local governments.
I'm not sure why. However, it seems to me that the fear of covid has been used
against Americans and people like Jay Inslee are using it as an excuse to
violate Washingtonian's Constitutional Rights.

Now I can't prove any of my beliefs as I don't have a way of gathering official
proof. However, circumstantially, it sure seems like my beliefs could be
substantiated.

### Notes
  * These numbers represent the United States only!
  * A Flu season is considered to run from about November to between April and
    June depending on the numbers of people sick I believe.

## Author
Jim Conner

## Bugs
Likely. This project is still in heavy development when I have time to work on
it.

## About the project
I am not a statistician. I am a software developer. One of the reasons I want
this to be publically available is so that my work is reviewed and approved. If
there are mistakes, please let me know so I can fix them. I'm seeking review for
code and method.

## Getting this script
The fastest way to get this script is to install and use `wget` and then run:

```
$ cd $HOME/Downloads
$ wget https://github.com/notjames/jimconn-shell/blob/master/projects/covid/sources/bin/flu-stats
$ wget https://github.com/notjames/jimconn-shell/blob/master/projects/covid/sources/Gemfile
$ chmod 755 flu-stats
$ sudo gem install bundle
$ bundle install
```

This script requires Ruby 2.5.x to run. There are a couple of libraries
needed to run as well hence the `bundle install` command.

More will be done in the future to make this easier for people to play with.

## How to run this yourself if you want...
This script runs in Linux. It will likely work in Mac (terminal) without any
tweaks. You must first obtain an API key and token which will require you to
create a free account at the CDC. I'll get more instructions for folks on how to
do that another time. If you're running Windows 10 then you can install Linux
WSL. Instructions on how to do that is way outside the scope of this project.
Just Google `Windows 10 WSL install`.

To run the script, save your API token data in a file in `ini` format to a file
called `soda.key` in whichever directory you desire (just make sure you remember
where you put it):

```
[default]
key_id = <key>
key_secret = <secret token>
```

Run `chmod 600 /path/to/soda.key`

Make sure `flu-data` is `chmod 755 /path/to/sources/bin/flu-stats` and then run
the script:

```
/path/to/sources/bin/flu-stats -c /path/to/soda.key
```


## References

https://dev.socrata.com/

https://www.opendatanetwork.com/

https://dev.socrata.com/foundry/data.cdc.gov/pp7x-dyj2

https://dev.socrata.com/foundry/data.cdc.gov/r8kw-7aab

https://dev.socrata.com/foundry/data.cdc.gov/uggs-hy5q

https://dev.socrata.com/foundry/data.cdc.gov/hc4f-j6nb

https://dev.socrata.com/foundry/data.cdc.gov/9bhg-hcku

https://github.com/socrata/soda-ruby

https://dev.socrata.com/docs/endpoints.html

https://dev.socrata.com/docs/queries/

------

# Why Are Linux Developers Required to Make it Work on Mac?
By Jim Conner 03/2018

Disclaimer: this will likely cause a holy war...#justsayin

## Huh? A new rule: the Linux tool you just wrote MUST work in Mac OS also! Wait! What?! Why?!

So, your production environment is a Linux environment, right? Sure you might use Kubernetes or just Docker on Linux in your production environment and likely in your staging and development environments (the official ones) as well. Your employer has been kind enough to assign you a Mac laptop on which to develop. This is all the rage it seems lately. I mean, the hardware is amazing. There is no real dispute there. But you get to your new desk and start onboarding only to learn that every shell script you write must work in Mac and Linux. Hmm. Wait. What?

## It doesn't make sense...

So what's the problem? Why on earth are we required to make everything we develop work in a developer environment that does not match production 100% especially in the world of containers and virtual machines? Why are we required make a tool work in Mac at all? If the mac BSD terminal was GNU compliant out-of-the-box then this would be less of an issue because then at least Mac terminal would be closer to what Linux terminal is. Let me make this clear, though; I'm speaking strictly in terms of working in an environment where the importance of using Linux is dictated by the production environment. Hey, if you have a prod env running Mac then 1) let me just say...hmmm, interesting and good for you &lt;/sarcasm&gt;, and 2) sorry you have to work with mac in your prod env. Carry on, you.

## But seriously...

Yes, yes. I am a little bias. I don't particularly like the BSD terminal working environment. Don't get me wrong. I have mad respect for the BSDs. I find the basic tooling to be far more rigid in terms of features in the basic tools like `awk`, `grep`, `sed`, et al. Therein lies the problem. These are basic tools!! If you write a shell script in Linux, it's not guaranteed to work properly in Mac. In fact, it likely won't especially if you want to use some of the more feature-rich qualities of the GNU tools in Linux. So now, you, the developer, are required to do all the work to make a portable shell script between Mac and Linux and for what? Because someone blindly dictated to you that your developer laptop is Mac and you must just make it work in both environments?! Does this even make sense?! I conject, no; resoundingly!

## Why the rant? I don't know what your problem is...

Unfortunately, I can't find the github project right now. I'll update this blog if and when I find it again. As I recall, however, it was a Kubernetes project that required contributors to write scripts that *must* run in Mac. I also personally know of other dev teams that have the same rule! Geez. I rolled my eyes. That. is. ridiculous! Especially when all those developers are doing is writing code to work in containers!! Then I started wondering about all of the open-source contributors who are in the world who don't even have Macs or the ability to purchase them! If you don't already know, Macs are notoriously expensive! How on earth do those guys test and make their code work in Mac? To the best of my knowledge, there is no way to make a Mac container work; at least not easily and frankly, the work required to make it work would likely be a huge time sink.

## What do you recommend?

Easy! Create yourself a Linux VM or if that's too heavy for you, use a Linux container! Forget all that lame Mac bunk! That's what computers are for. Then you can go tell those baffoons forcing you to write unnecessarily portable code to jump in a river because you have a way to write Linux shell scripts in Mac.

## But how?!?

OK. Let's go down this road. You have a Mac, right? You need to make a decision: use a container (I recommend Docker but rkt is good, too) or Virtual Machine (I recommend Virtualbox because it's free and works quite well)?

### Docker

Installing `Docker` on Mac is pretty simple. Follow the instructions [here](https://docs.docker.com/docker-for-mac/install/).


### VirtualBox

Installing `VirtualBox` on Mac is pretty simple. Follow the instructions [here](https://www.virtualbox.org/wiki/Downloads). You'll likely want to install the extension pack as well.

### Which one should I use?

Well, that's a loaded question. Setting up a container is probably the easiest and fastest way to go, but if you need a full OS, then VM is the right way. If you use a VM, you'll need to have a considerable amount of hardware availability on your Mac to make it all run smoothly. I personally recommend at least a multi-core CPU with 16Gb or RAM and a large enough hard drive to allow a decent sized virtual disk for Linux. I generally prefer a virtual drive that is no less than 128 Gb (dynamically allocated -- more about that later) so you'll need a large enough SSD on your Mac, though it's likely you have at least a 500Mb SSD or maybe even a Terabyte. Carving 128Gb out of either of those shouldn't be too difficult.

### What's the benefits of a container over a VM?

A container is a special sandbox environment that allows the user to work in the environment with a subset of the full operating system. Everything you need to generally work in that environment is there provided it's set up properly.

A virtual machine is in fact exactly that. It's a software-based computer. Essentially, it's just like working on a different computer within your actual hardware. That is why you really need to make sure you have enought resources for your laptop to run an entire other operating system in parallel; because it is. With a container, you're not, but you are still running what you need IE tools, compilers, etc in that container and essentially you're able to get the same results as if you were in an actual full-blown OS.

### Which one takes more resource?

Well, if you're talking about running resources, the VM will take whatever amount of hardware resources you've allocated to the VM. The container is seen by the host OS as just another program and in fact whatever runs inside the container is actually being run by the host's hardware resources (well, the VM is too, but in a virtual environment). The short answer is that the VM will take more resources to run than the container.

## How do I set up a VM?

Setting up a virtualmachine is vastly more involved than just using a container. So to make it a little easier for you, you can follow this [walk-through](https://docs.oracle.com/cd/E26217_01/E26796/html/qs-create-vm.html) and just substitute the Operating System used as Linux instead of Windows. The general steps are all the same. The ISO you can use for the installation is up to you, but I'm frankly a fan of [Ubuntu Budgie](http://cdimage.ubuntu.com/ubuntu-budgie/releases/17.10.1/release/ubuntu-budgie-17.10.1-desktop-amd64.iso). Save whichever ISO you choose in your Downloads directory and when you get to the part where you need to choose an ISO image, point to that ISO. If you've never installed Linux before, well, this is your lucky chance. Unfortunately, installing linux is outside the scope of this document.

## How do I set up a container?

You'll find yourself a cozy place in your terminal, you'll need the provided [`Dockerfile`](/musings/devcontainer/Dockerfile). You'll need the other files in [here](/musings/devcontainer), too. Grab the files in the `devcontainer` directory of this repo.

Now, run the following command (be sure you've properly installed Docker):

```
docker build -t devcontainer:v1.0 .
```

Once it's done, you can start the container with:

```
docker run -it -v $HOME:/home/$USER/host -e ORIGHOME=$HOME -e UID=$(stat -f %u .) -e GID=$(stat -f %g .) -e NUSER=$USER devcontainer:v1.0 bash
```

You'll find yourself in a bash shell of an Ubuntu container. You can edit with the vim editor. Basic developer tools are installed. If you want to tweak your container, you'll edit the Dockerfile and re-run the `docker build` command above. Within the container, you'll be automatically `su`ed into an interactive shell of your username. There will be a directory called `host`. That directory *is* your Mac `$HOME` directory. Anything you do in that directory will affect your host OS, so be careful.

Finally, there's a very important thing to know about containers. Anything created, changed, or added to the container **not in the `host` directory** during your time within it *will disappear when you leave the container*!! OK, so that potentially sucks. In other words, the container is ephemeral, but there's a way to fix that.

While you're in the running container, if you ever need to save what you've done, you can drop out of the container with `ctrl+p ctrl+q`. Once you're in your host shell, you can commit changes to the container using the following:

```
# first, figure out what the name of your running container is
dn=$(docker ps | grep devcontainer | grep -Po '\w+$')

# commit all changes to the running container
docker commit $dn

# re-attach to the running container
docker attach $dn
```
Easy peezy lemon squeezy. So, in short, you either do everything in `/home/<username>/host` and all is well, or you can run the three commands mentioned above. If you don't follow both of these things, you will lose everything you did in the container while running it when you exit that container!

----

# Coding is an Art
By Jim Conner 01/2018

## Coding is an Art; not for long?

So, next week we’re going to be going to have a meeting on code style and guide, which stemmed from a PR I proposed last week in which the reviewer suggested we use a style guide and formatting by Google. Meh. Google, for me, is not the end-all-be-all of dictating any kind of guidelines that should be used by the masses. Furthermore, their [guide](https://google.github.io/styleguide/shell.xml), which specifically for shell scripting and is in my opinion only ~33.3333(you get the point)% relevant with which I personally agree.

Wait, "...in my opinion only ~33.3333(you get the point)% relevant with which I personally agree." This is the crux of the issue for me. Everybody has different styles they use. Everybody has their own personal preferences about coding. They have different ways of solving problems. Some things are technically sound. Some of them downright suck.

![Image](https://i2.wp.com/commadot.com/wp-content/uploads/2009/02/wtf.png?w=550)

And then there's maintainability! This is the problem where someone writes code in the way that works best for them, but those that come behind who are required to maintain that individual's code are lost trying to find out what the heck the original developer was attempting to do often asking questions like, "How did this ever work in the first place?"

That got me researching style guides, formatting guides, etc. That also caused me to reflect on what code development is to me and likely to others, which led to a concept about coding that I have long believed was the case; coding is art. It IS, and I will attempt to prove it.

## The Internets

First, I decided to see if there were other documents on the internets that conveyed the same opinion that coding is art. I found [this](http://www.paulgraham.com/knuth.html) by Paul Graham (I think) summarizing an opinion backed by compelling argument that programming is in fact an art.

"The idea of style in programming is now coming to the forefront at last, and I hope that most of you have seen the excellent little book on Elements of Programming Style by Kernighan and Plauger [16]. In this connection it is most important for us all to remember that there is no one "best" style; everybody has his own preferences, and it is a mistake to try to force people into an unnatural mold.”

## And in summary the author finished,

"We have seen that computer programming is an art, because it applies accumulated knowledge to the world, because it requires skill and ingenuity, and especially because it produces objects of beauty. A programmer who subconsciously views himself as an artist will enjoy what he does and will do it better. Therefore we can be glad that people who lecture at computer conferences speak about the state of the Art."

I really appreciated this statement, but it surfaces some interesting questions about some very hot-button items related to coding style and practices today. There are holy wars about things such as uncuddled bracing (the only right way to brace) vs uncuddled bracing (aka Allman bracing) vs [all the other wrong ones](https://ubuntuforums.org/showthread.php?t=758698) -- note, I didn't even know these bracing styles actually had real names! That was interesting. Then there's indentation wars. Holy COW! Look at [this](http://www.terminally-incoherent.com/blog/2009/04/10/the-only-correct-indent-style/)!

But where do these differences bring us when it comes to code readability and maintainability? I've only barely scratched the surface when it comes to the topic of coding-as-an-artform because not only are styles part of that art form but actual code concepts, use of algorithms, and really an infinite sleugh of different ways of writing instructions for a CPU to process and perform. Now take those infinite ways of doing things; mix a gaggle of different programmers' styles who write those instructions; liberally apply opinions of other code reviewers opinions, department policies, and benevolent dictators' styles and now you've just gotta mess! *AND* you no longer have the original artist's art. But does that matter?

## Philosophical Balancing

The problem with these holy wars is that they project the subjective views of developers against the subjective views of developers. I’ll expound.

There are some difficult-to-grasp philisophical concepts that I'm bringing to light. While I do believe coding is an art, I also agree that it is no fun maintaining some other peoples' code sometimes, too. So how do we strike a balance? I thought of an interesting analogy of how programming is an artform compared to actual artistic art.

Consider the painting "The Mona Lisa." If Leonardo de Vinci submitted his famous painting to get PRed before being able to submit the painting to arthub.com, wouldn't it have been interested to read those reviews?

  "Her lips are too thin! What were you thinking?!?!"

  "I can't tell if that is a veil on her forehead or some crazy shadowing trick you're attempting to make. Could you darken it?"

  "Ugh, that background sucks! I prefer a background that is more beachy."

That is essentially what some reviews for code are; opinions. They are opinions of people who have their own stylistic approach projecting those subjective styles onto the code they are reviewing. Now, don't get me wrong. Their are reviews that are very apropos to the project that have nothing to do with the style or art of the project, but rather the practical approach being made in the project. As an analogy, that would be something like the review of de Vinci's painting saying something like, "you would be better served to use material X instead of this material Y, which will make your colors POP!”

## Can We Have Some Balance, PLEASE?!

How do we tell artists to continue using their own methods and approaches to their art but alter [slightly?] those same methods and approaches in an attempt to strike a balance with allowing other artists who may have to alter those paintings altogether. There’s a bigger issue to this question. There are literally hundreds of thousands of artists who all have their own disciplines and approaches to their art who are likely almost all emotionally invested in how they complete their work. And then there’s the final product that is the object of creating the painting in the first place. That painting might be owned by a corporation or just the pleasure work of a single artist with a self-proclaimed fantastic idea for a painting.

As human beings, we all seem to want to dictate our environment to our desirable comfort. That makes sense. We naturally want to feel comfortable and important. We want to feel satisfied. Our daily work as programmers is no exception to this rule unless…you’re not...human. Ironically, it is our human nature which both allows us to create the painting in the first place and also judge other’s paintings projecting our own subjective ideas in desire to “fix” other’s paintings. So is the problem being human beings? Perhaps.

An effort has been made to make some styling of code homogenous between developers. Python does this strongly with white-space indentation. Go slightly does it by at least enforcing [certain bracing style with automatic insertion of semi-colons](https://golang.org/doc/faq#semicolons) which caused its own [holy war](https://groups.google.com/forum/#!topic/golang-nuts/rzLzp_Z74ik%5B1-25%5D) *because* the original poster had a style that works for him!

So let’s talk about balance. Is it removing the artistic license from the artist? I think it is. In the end when everyone is done homogenizing to a single style, we will have no more art, just instructions. Instead of having all kinds of beautiful paintings representing what the original artists were attempting to convey, we’ll have cookie cutter  paintings of code that execute perfectly and can be read and maintained by everyone. Resistance is futile; [all your base are belong to us](https://www.youtube.com/watch?v=xZPTYpTKOI0)!


