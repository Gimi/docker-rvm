# Docker RVM #

Docker image for Ruby Version Manager.

## Image Versions ##

### Base Images ###

Base images are images tagged with "latest" or datetime (e.g. 201802100830, in UTC).
They contain only rvm without any ruby.

### MRI Images ###

MRI images are images tagged with "mri-" prefix and the installed latest version.
For example, "mri-2.5.0" means the image has MRI 2.5.0 installed.

Tags could also end with a "-N" suffix, which indicates how many previous versions are also installed.
For example, "mri-2.5.0-1" installed both MRI 2.5.0 and one previous version, i.e. 2.4 (2.4.3 in that case). While "mri-2.5.0-2" install MRI 2.5.0, 2.4, and 2.3.
These images are useful when running tests against multiple versions.
