package MooseX::AttributeFilter::Trait::Attribute::Role;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.03";

use Moose::Role;

has filter => (
    is  => 'ro',
    isa => 'CodeRef|Str',
    predicate => 'has_filter',
);

1;

