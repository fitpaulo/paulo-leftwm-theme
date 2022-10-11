#!/bin/bash
leftwm state -nq | jq -r ".workspaces[$1].layout" | awk '{print $0}'
