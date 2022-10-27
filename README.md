# Defining a private method inside a class method in Ruby

This small repo demonstrates the complications one can encounter
when trying to define private methods as part of a mixin module.

In particular, if we are not careful about where these methods are
declared they may not be private at all.

To run the demo just invoke:

> ruby main.rb

You can toggle between the original implementation and the updated
implementation by commenting out the relevant section in
`has_content.rb`.

Please refer to the [blog
article](https://www.vector-logic.com/blog/posts) for a more detailed
discussion on this topic.
