# Why Are Linux Developers Required to Make it Work on Mac?
By Jim Conner

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

You'll find yourself in a bash shell of an Ubuntu container. You can edit with the vim editor. Basic developer tools are installed. If you want to tweak your container, you'll edit the Dockerfile and re-run the `docker build` command above.

Finally, there's a very important thing to know about containers. Anything created, changed, or added to the container during your time in it *will disappear when you leave the container*!! OK, so that sucks. But there's a way to fix that.

While you're in the running container, if you ever need to save what you've done, you can drop out of the container with `ctrl+p ctrl+q`. Once you're in your host shell, you can commit changes to the container using the following:

```
# first, figure out what the name of your running container is
dn=$(docker ps | grep devcontainer | grep -Po '\w+$')

# commit all changes to the running container
docker commit $dn

# re-attach to the running container
docker attach $dn
```

Easy peezy lemon squeezy.

----

# Coding is an Art
By Jim Conner

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

[This blog](https://notjames.github.io/blog/)
