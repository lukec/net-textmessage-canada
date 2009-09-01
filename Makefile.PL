require 5.004;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	   => 'Net::TextMessage::Canada',
    'VERSION_FROM' => 'lib/Net/TextMessage/Canada.pm',
    'ABSTRACT_FROM' => 'lib/Net/TextMessage/Canada.pm',
    'AUTHOR'       => 'Luke Closs <cpan@5thplane.com>',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
        ? ('LICENSE' => 'perl')
        : ()),
    'PREREQ_PM'    => {	
	'Moose' => '0.89',
        'Test::More'         => 0,
    },
    'META_MERGE' => {
        'resources' => {
            'repository' => 'http:/github.com/lukec/net-textmessage-canada'
        }
    },
    dist => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Net-Parliament-* cache/*' },
);
