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

MooseX::AttributeFilter is a port of [MooX::AttributeFilter](https://metacpan.org/pod/MooX::AttributeFilter) to Moose.

Some parts don't work correctly in mutable classes.

Use with roles is untested so far.

# LICENSE

Copyright (C) Little Princess Kitten <3.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

KITTEN

[https://metacpan.org/author/KITTEN](https://metacpan.org/author/KITTEN)

[https://github.com/icklekitten](https://github.com/icklekitten)
