use strict;

use Test::More;
plan tests => 43;

use DateTime;

my $d = DateTime->new( year => 2001,
                       month => 7,
                       day => 5,
                       hour => 2,
                       minute => 12,
                       second => 50,
                       offset => 0,
                     );

is( $d->year, 2001, '->year' );
is( $d->year_0, 2000, '->year_0' );
is( $d->month, 7, '->month' );
is( $d->month_0, 6, '->month_0' );
is( $d->month_name, 'July', '->month' );
is( $d->month_abbr, 'Jul', '->month' );
is( $d->day_of_month, 5, '->day_of_month' );
is( $d->day_of_month_0, 4, '->day_of_month' );
is( $d->day, 5, '->day' );
is( $d->day_0, 4, '->day_0' );
is( $d->mday, 5, '->mday' );
is( $d->mday_0, 4, '->mday_0' );
is( $d->mday, 5, '->mday' );
is( $d->mday_0, 4, '->mday' );
is( $d->hour, 2, '->hour' );
is( $d->minute, 12, '->minute' );
is( $d->min, 12, '->min' );
is( $d->second, 50, '->second' );
is( $d->sec, 50, '->sec' );
is( $d->ical, '20010705T021250Z', '->ical' );

is( $d->day_of_year, 186, '->day_of_year' );
is( $d->day_of_year_0, 185, '->day_of_year' );
is( $d->day_of_week, 5, '->day_of_week' );
is( $d->day_of_week_0, 4, '->day_of_week' );
is( $d->wday, 5, '->wday' );
is( $d->wday_0, 4, '->wday' );
is( $d->dow, 5, '->dow' );
is( $d->dow_0, 4, '->dow' );
is( $d->day_name, 'Thursday', '->day_of_week' );
is( $d->day_abbr, 'Thu', '->day_of_week' );

is( $d->ymd, '2001-07-05', '->ymd' );
is( $d->ymd('!'), '2001!07!05', "->ymd('!')" );
is( $d->date, '2001-07-05', '->ymd' );

is( $d->mdy, '07-05-2001', '->mdy' );
is( $d->mdy('!'), '07!05!2001', "->mdy('!')" );

is( $d->dmy, '05-07-2001', '->dmy' );
is( $d->dmy('!'), '05!07!2001', "->dmy('!')" );

is( $d->hms, '02:12:50', '->hms' );
is( $d->hms('!'), '02!12!50', "->hms('!')" );
is( $d->time, '02:12:50', '->hms' );

is( $d->datetime, '2001-07-05T02:12:50', '->datetime' );
is( $d->iso8601, '2001-07-05T02:12:50', '->iso8601' );

is( $d->is_leap_year, 0, '->is_leap_year' );

my $leap_d = DateTime->new( year => 2004,
                            month => 7,
                            day => 5,
                            hour => 2,
                            minute => 12,
                            second => 50,
                            offset => 0,
                          );

is( $leap_d->is_leap_year, 1, '->is_leap_year' );
