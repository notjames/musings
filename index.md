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
