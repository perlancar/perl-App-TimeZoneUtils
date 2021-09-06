package App::TimeZoneUtils;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our %SPEC;

$SPEC{detect_local_time_zone} = {
    v => 1.1,
    summary => 'Detect local time zone',
    description => <<'_',

Currently uses <pm:DateTime::TimeZone>, which has several heuristics itself
(please see the module for more details). When local time zone cannot be
determined, it dies.

_
    args => {
    },
    examples => [
    ],
};
sub detect_local_time_zone {
    require DateTime::TimeZone;
    my %args = @_;

    my $tz = DateTime::TimeZone->new(name => "local");
    [200, "OK", {
        name => $tz->name,
        offset => $tz->offset,
    }];
}

1;
# ABSTRACT: An assortment of time-zone-related CLI utilities

=head1 SYNOPSIS

This distribution provides the following command-line utilities related to
time zones:

#INSERT_EXECS_LIST


=head1 append:SEE ALSO

L<App::DateUtils>

=cut
