# NAME

MooseX::AttributeFilter - MooX::AttributeFilter with cute antlers OwO

# SYNOPSIS

    package My::Class;
    use Moose;
    use MooseX::AttributeFilter;
    
    has field => (
        is     => 'rw',
        filter => 'filterField',
    );
    
    sub filterField {
        my $this = shift;
        return "filtered($_[0])";
    }
    
    package main;
    my $obj = My::Class->new( field => "initial" );
    $obj->field eq "filtered(initial)"; # True!

# DESCRIPTION

MooseX::AttributeFilter is a port of [MooX::AttributeFilter](https://metacpan.org/pod/MooX::AttributeFilter) to [Moose](https://metacpan.org/pod/Moose).

A filter a method that is called before an attribute value is set (by accessor
or constructor). It is called before coercions, type checks, and triggers.

It is called as a method (so receives the object) with the new attribute value
as its first parameter, and the old attribute value as the second parameter.
(When called from constructor, no old value, so only one parameter.) Its return
value is used as the attribute value.

It is even called when an attribute value is build by builder methods or
defaults.

See [MooX::AttributeFilter](https://metacpan.org/pod/MooX::AttributeFilter) for more details and for use cases.

# BUGS

Some parts don't work correctly in mutable classes. Mutable classes are slow anyway.

[https://rt.cpan.org/Dist/Display.html?Queue=MooseX-AttributeFilter](https://rt.cpan.org/Dist/Display.html?Queue=MooseX-AttributeFilter)

# CUTE

<div>
    <img height="680" width="500" src="https://data.whicdn.com/images/129435330/large.jpg" alt="cute kitty girl" />
</div>

Cute.

# SEE ALSO

[MooX::AttributeFilter](https://metacpan.org/pod/MooX::AttributeFilter), [Moose](https://metacpan.org/pod/Moose).

[MooseX::AttributeFilter::Trait::Attribute](https://metacpan.org/pod/MooseX::AttributeFilter::Trait::Attribute),
[MooseX::AttributeFilter::Trait::Attribute::Role](https://metacpan.org/pod/MooseX::AttributeFilter::Trait::Attribute::Role).

# LICENSE

Copyright (C) 2018 Little Princess Kitten <kitten@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

KITTEN <kitten@cpan.org>

[https://metacpan.org/author/KITTEN](https://metacpan.org/author/KITTEN)

[https://github.com/icklekitten](https://github.com/icklekitten)

<3
