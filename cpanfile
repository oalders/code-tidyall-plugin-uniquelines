};
on 'configure' => sub {
on 'develop' => sub {
on 'test' => sub {
requires "Code::TidyAll::Plugin" => "0";
  requires "ExtUtils::MakeMaker" => "0";
requires "List::Util" => "1.45";
requires "Moo" => "0";
  requires "perl" => "5.006";
requires "perl" => "5.006";
  requires "Pod::Coverage::TrustPod" => "0";
requires "strict" => "0";
  requires "Test::Code::TidyAll" => "0.50";
  requires "Test::CPAN::Changes" => "0.19";
  requires "Test::More" => "0.88";
  requires "Test::Pod::Coverage" => "1.08";
  requires "Test::Spelling" => "0.12";
requires "warnings" => "0";
