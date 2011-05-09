
use strict;
use warnings;

BEGIN { require 5.010; }

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'RTHOMPSON\'s Dist::Zilla Configuration',
  'AUTHOR' => 'Ryan C. Thompson <rct@thompsonclan.org>',
  'BUILD_REQUIRES' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Scalar::Util' => '0',
    'Test::More' => '0.94',
    'perl' => '5.004'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'Dist-Zilla-PluginBundle-RTHOMPSON',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Dist::Zilla::PluginBundle::RTHOMPSON',
  'PREREQ_PM' => {
    'Carp' => '0',
    'Dist::Zilla::Plugin::ArchiveRelease' => '0',
    'Dist::Zilla::Plugin::AutoPrereqs' => '0',
    'Dist::Zilla::Plugin::AutoVersion' => '0',
    'Dist::Zilla::Plugin::CheckChangesHasContent' => '0',
    'Dist::Zilla::Plugin::CheckPrereqsIndexed' => '0',
    'Dist::Zilla::Plugin::CompileTests' => '0',
    'Dist::Zilla::Plugin::ConfirmRelease' => '0',
    'Dist::Zilla::Plugin::CopyFilesFromBuild' => '0',
    'Dist::Zilla::Plugin::CriticTests' => '0',
    'Dist::Zilla::Plugin::ExecDir' => '0',
    'Dist::Zilla::Plugin::ExtraTests' => '0',
    'Dist::Zilla::Plugin::GatherDir' => '0',
    'Dist::Zilla::Plugin::Git::Check' => '0',
    'Dist::Zilla::Plugin::Git::Commit' => '0',
    'Dist::Zilla::Plugin::Git::Tag' => '0',
    'Dist::Zilla::Plugin::GithubMeta' => '0',
    'Dist::Zilla::Plugin::HasVersionTests' => '0',
    'Dist::Zilla::Plugin::InstallGuide' => '0',
    'Dist::Zilla::Plugin::KwaliteeTests' => '0',
    'Dist::Zilla::Plugin::License' => '0',
    'Dist::Zilla::Plugin::MakeMaker' => '0',
    'Dist::Zilla::Plugin::Manifest' => '0',
    'Dist::Zilla::Plugin::ManifestSkip' => '0',
    'Dist::Zilla::Plugin::MetaYAML' => '0',
    'Dist::Zilla::Plugin::MinimumPerl' => '0',
    'Dist::Zilla::Plugin::NextRelease' => '0',
    'Dist::Zilla::Plugin::PkgVersion' => '0',
    'Dist::Zilla::Plugin::PodCoverageTests' => '0',
    'Dist::Zilla::Plugin::PodSyntaxTests' => '0',
    'Dist::Zilla::Plugin::PodWeaver' => '0',
    'Dist::Zilla::Plugin::PortabilityTests' => '0',
    'Dist::Zilla::Plugin::Prereqs' => '0',
    'Dist::Zilla::Plugin::PruneCruft' => '0',
    'Dist::Zilla::Plugin::PruneFiles' => '0',
    'Dist::Zilla::Plugin::ReadmeAnyFromPod' => '0',
    'Dist::Zilla::Plugin::ReportVersions' => '0',
    'Dist::Zilla::Plugin::ShareDir' => '0',
    'Dist::Zilla::Plugin::StaticVersion' => '0',
    'Dist::Zilla::Plugin::SynopsisTests' => '0',
    'Dist::Zilla::Plugin::TestRelease' => '0',
    'Dist::Zilla::Plugin::UnusedVarsTests' => '0',
    'Dist::Zilla::Plugin::UploadToCPAN' => '0',
    'Dist::Zilla::Role::PluginBundle::Easy' => '0',
    'Moose' => '0',
    'MooseX::Has::Sugar' => '0',
    'Pod::Weaver::Section::Installation' => '0',
    'Pod::Weaver::Section::WarrantyDisclaimer' => '0',
    'utf8' => '0'
  },
  'VERSION' => '0.111290',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



