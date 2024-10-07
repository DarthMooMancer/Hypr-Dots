#!/bin/bash
emerge --update --deep --newuse @world
emerge --depclean
revdep-rebuild
