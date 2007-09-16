use strict;
use warnings;
use ExtUtils::MakeMaker;

my $PREREQ_PM = { 'Test::More' => 0,
                  'File::Attributes' => 0,
                };

if($^O =~ /darwin/){
    $PREREQ_PM->{'MacOSX::File::Info'} = 0;
}

WriteMakefile(
    NAME                => 'File::CreationTime',
    AUTHOR              => 'Jonathan T. Rockway <jon-cpan@jrock.us>',
    VERSION_FROM        => 'lib/File/CreationTime.pm',
    ABSTRACT_FROM       => 'lib/File/CreationTime.pm',
    PL_FILES            => {},
    PREREQ_PM           => $PREREQ_PM,
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'File-CreationTime-*' },
);
