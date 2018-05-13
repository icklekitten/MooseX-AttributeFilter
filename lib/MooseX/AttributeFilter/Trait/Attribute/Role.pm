package MooseX::AttributeFilter::Trait::Attribute::Role;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

use Moose::Role;

has filter => (
    is  => 'ro',
    isa => 'CodeRef|Str',
);

1;

