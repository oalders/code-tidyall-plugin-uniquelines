# NAME

Code::TidyAll::Plugin::UniqueLines - Remove duplicate lines from a file

[![Build Status](https://travis-ci.org/oalders/code-tidyall-plugin-uniquelines.png?branch=master)](https://travis-ci.org/oalders/code-tidyall-plugin-uniquelines)

# VERSION

version 0.000003

# SYNOPSIS

    # In configuration:

    [UniqueLines]
    select = .ispell* **/.gitignore

# DESCRIPTION

Discards duplicate lines from a file.  Useful for files containing one entry
per line, such as `.svnignore`, `.gitignore`, and `.ispell*`.

# ACKNOWLEDGEMENTS

This code was essentially pilfered from [Code::TidyAll::Plugin::SortLines](https://metacpan.org/pod/Code::TidyAll::Plugin::SortLines)

# AUTHOR

Olaf Alders <olaf@wundercounter.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014-2017 by Olaf Alders.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
