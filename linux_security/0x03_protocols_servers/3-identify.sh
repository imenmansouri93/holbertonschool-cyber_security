#!/bin/bash
lynis audit system | grep -Ei 'vulnerab|warning|suggestion'
