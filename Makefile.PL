require 5.004;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	   => 'Net::TextMessage::Canada',
    'VERSION_FROM' => 'lib/Net/TextMessage/Canada.pm',
    'ABSTRACT'     => 'SMS to email gateway mapping for Canada',
    'AUTHOR'       => 'Luke Closs <cpan@5thplane.com>',
    'LICENSE'      => 'perl',
    'PREREQ_PM'    => {	
	'Moose' => '0.89',
    },
    'META_MERGE' => {
        'resources' => {
            'repository' => 'http:/github.com/lukec/net-textmessage-canada'
        }
    },
);
