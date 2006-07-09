use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'File::CreationTime',
    AUTHOR              => 'Jonathan T. Rockway <jon-cpan@jrock.us>',
    VERSION_FROM        => 'lib/File/CreationTime.pm',
    ABSTRACT_FROM       => 'lib/File/CreationTime.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	'File::Attributes' => 0,
   },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'File-CreationTime-*' },
);
