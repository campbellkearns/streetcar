#!/bin/bash
curl -v --cookie cookies.dat \
     -H "Content-Type: application/json" \
     http://localhost:3000/api/sessions
