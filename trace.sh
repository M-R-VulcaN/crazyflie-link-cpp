#!/bin/bash


lttng create
lttng enable-event -u 'gydle_om:*'
lttng start
$S
lttng stop
lttng view 
