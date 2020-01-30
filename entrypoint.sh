#!/bin/bash
set -e

irrd_database_upgrade

twistd -n irrd
