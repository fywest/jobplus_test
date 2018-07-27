#!/bin/bash
cd /home/fywest/jobplus_test

export FLASK_APP=manage.py
export FLASK_DEBUG=1

pwd

firefox -P 'default'&
sleep 4
firefox -new-tab 'localhost:5000'

flask run


