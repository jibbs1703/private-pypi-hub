#!/bin/bash

USERNAME=$1
PASSWORD=$2

htpasswd -c .htpasswd $USERNAME $PASSWORD