package MooseX::AttributeFilter;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

use Moose ();
use Moose::Exporter;

Moose::Exporter->setup_import_methods();

sub init_meta {
    my ($class_name, %args) = @_;
    my $caller = $args{for_class};
    my $trait  = 'MooseX::AttributeFilter::Trait::Attribute';
    
    Moose::Util::MetaRole::apply_metaroles(
        for             => $caller,
        class_metaroles => {
            attribute         => [ $trait ],
        },
        role_metaroles => {
            attribute         => [ $trait . '::Role' ],
            applied_attribute => [ $trait ],
        },
        parameter_metaroles => {
            applied_attribute => [ $trait ],
        },
        parameterized_role_metaroles => {
            applied_attribute => [ $trait ],
        },
    );
}

1;
__END__

=encoding utf-8

=head1 NAME

MooseX::AttributeFilter - MooX::AttributeFilter with cute antlers OwO

=head1 SYNOPSIS

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

=head1 DESCRIPTION

MooseX::AttributeFilter is a port of L<MooX::AttributeFilter> to Moose.

Some parts don't work correctly in mutable classes.

Use with roles is untested so far.

=head1 LICENSE

Copyright (C) Little Princess Kitten <3.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

KITTEN

L<https://metacpan.org/author/KITTEN>

L<https://github.com/icklekitten>

=cut

