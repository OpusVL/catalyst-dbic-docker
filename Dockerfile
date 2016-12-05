FROM quay.io/opusvl/opt-perl:5.20
MAINTAINER Alastair McGowan-Douglas <alastair.mcgowan@opusvl.com>
 
RUN /opt/perl5/bin/cpanm -n Term::ReadKey \
    && /opt/perl5/bin/cpanm HTML::FormFu \
    && /opt/perl5/bin/cpanm Catalyst::Runtime DBIx::Class Devel::Confess
