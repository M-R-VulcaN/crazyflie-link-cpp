#!/bin/bash


lttng create
lttng enable-event -u 'gydle_om:*'
lttng start
$1
lttng stop
lttng view 
