#!/usr/bin/env bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

#URL 


WEATHER=$(curl -s "http://api.openweathermap.org/data/2.5/weather?units=metric&APPID=3718d7f90e7b081ca8f46aa4305c05ea&q=kosice")

@test "when main" {
    run echo $(echo "$WEATHER")
    assert [ ! "$output" = "null" ]

   # assert $(echo $WEATHER | jq .main > /dev/null)
    }







