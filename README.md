# report-utils

DEPRECATE NOTICE
----------------

This module was used for setting up the report scripts and web
serving area. The method is now OBSOLETE!

All *report-utils* is now handled by Puppet and set up through
the **himlar** repository (https://github.com/norcams/himlar).

Configuration (set up of web server area, including scripts and links)
is done with hieradata (`profile::application::report::report_utils`),
mainly in *common/roles/report.yaml*).

Files/text snippets are located in the **profile** "module" (`profile/files/application/report`).

DEPRECATE NOTICE
----------------

Utilities for instances using NRECs report APIs

The `Makefile` will create the python scripts used in the instances. The
scripts will be hosted on the a report node together with the NREC report API.


DO NOT USE!
