package Munin::MySQL::Graph::SlaveStatus;

use warnings;
use strict;

sub graphs { return {
    slave_status => {
        config => {
            global_attrs => {
                title  => 'Slave Status',
                vlabel => 'Activity',
            },
            data_source_attrs => {
                draw => 'LINE1',
            },
        },
        data_sources => [
            {name => 'slave_sql_running',          label    => 'Slave Running',
                                                   type     => 'GAUGE',
                                                   draw     => 'AREA',
                                                   colour   => '00AA00',
                                                   min      => '0',
                                                   max      => '1'},
            {name => 'slave_sql_stopped',          label    => 'Slave Stopped',
                                                   type     => 'GAUGE',
                                                   draw     => 'AREA',
                                                   colour   => 'DD0000',
                                                   critical => ':0',
                                                   min      => '0',
                                                   max      => '1'},
        ],
    },
}}

1;
