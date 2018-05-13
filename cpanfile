requires 'perl', '5.008009';
requires 'Moose', '2.0800';

on 'test' => sub {
    requires 'Test2::V0';
    requires 'Test::Moose';
};
