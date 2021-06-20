#!/bin/bash


lttng create
lttng enable-event -u 'gydle_om:*'
lttng enable-event -k --all
lttng start
$1
lttng stop
lttng view 
