[![Actions Status](https://github.com/tbrowder/App-Add-resources/actions/workflows/linux.yml/badge.svg)](https://github.com/tbrowder/App-Add-resources/actions) [![Actions Status](https://github.com/tbrowder/App-Add-resources/actions/workflows/macos.yml/badge.svg)](https://github.com/tbrowder/App-Add-resources/actions) [![Actions Status](https://github.com/tbrowder/App-Add-resources/actions/workflows/windows.yml/badge.svg)](https://github.com/tbrowder/App-Add-resources/actions)

NAME
====

**App::Add-resources** - Provides a Raku script, 'add-resources', to aid in creating a new Raku module

SYNOPSIS
========

```raku
# Enter the program with no @*ARGS:
$ add-resources # OUTPUT:
Usage: add-resources go | dir=X
...
```

DESCRIPTION
===========

Given a Raku module's git-versioned directory, the program:

1. ensures the module's '/resources' directory's contents listing matches that of its 'META6.json' file's 'resources' array's contents,

2. adds a new 'Resources.rakumod' file in the module's 'lib' directory, and

3. adds the new file name in the 'provides' section of the 'META6.json' file.

**App::Add-resources** is ...

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

© 2024 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.

