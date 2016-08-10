FROM quay.io/opusvl/opt-perl:5.20
MAINTAINER Alastair McGowan-Douglas <alastair.mcgowan@opusvl.com>
 
RUN /opt/perl5/bin/cpanm -n Term::ReadKey Test::Aggregate::Nested \
    && /opt/perl5/bin/cpanm --installdeps HTML::FormFu \
    && /opt/perl5/bin/cpanm -HTML::FormFu -n \
    && /opt/perl5/bin/cpanm Martian Catalyst::Runtime DBIx::Class
