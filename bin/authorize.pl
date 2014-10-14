#!/usr/bin/perl -w
#

die "Unable to find your home directory\n" if ! -d $ENV{HOME};

########################################################################################################################
sub doHelp
{
  print STDERR <<END_HELP;
Usage: authorize.pl [user]
Set up RSA public key authorization for a remote user account

      user       The remote user account
END_HELP
  exit(0);
}

my $remote = "";
while ($ARGV[0])
{
  if ($ARGV[0] eq '-?' or $ARGV[0] eq '--help')
  {
    doHelp();
  }
  elsif ($remote eq "")
  {
    $remote = $ARGV[0];
    shift(@ARGV);
  }
  else
  {
    print "Invalid argument: $ARGV[0]";
    exit;
  }
}

doHelp() if $remote eq "";

########################################################################################################################
print <<EndOfLines;
This command will add your public key to the list of authorized keys for
retrieving the directory extract. You will need to enter the password
for the remote user twice during this process.

EndOfLines

if (! -f "$ENV{HOME}/.ssh/id_rsa")
{
  print "\nGenerating your RSA public/private keypair for use with SSH commands...\n";
  doSystem("ssh-keygen -t rsa -f $ENV{HOME}/.ssh/id_rsa -P \"\"");
}

open F, "$ENV{HOME}/.ssh/id_rsa.pub" or die "Cannot read your RSA key\n";
my $pub = <F>;
close F;
$pub =~ s/[\x0a\x0d]*$//;

my ($alg,$key,$user) = split(/\s+/, $pub);
my $fname = $user;
$fname =~ s/\@/_at_/;
$fname .= ".sh";

my $ak = ".ssh/authorized_keys";
open F, ">/var/tmp/$fname" or die "Cannot write command file /var/tmp/$fname: $!\n";
print F <<EndOfCommand;
if [ ! -d .ssh ]
then
  mkdir .ssh
  chmod 700 .ssh
fi

if [ -f $ak ]
then
  if [ -w $ak ]
  then
    echo "$pub" >>  $ak
  else
    chmod 600 $ak
    echo "$pub" >>  $ak
    chmod 400 $ak
  fi
else
  echo "$pub" >  $ak
  chmod 644 $ak
fi
EndOfCommand
close F;
chmod 0755,"/var/tmp/$fname";

doSystem("scp /var/tmp/$fname ${remote}:$fname");
doSystem("ssh ${remote} \"./$fname\"");
doSystem("ssh ${remote} \"rm $fname\"");

sub doSystem
{
  my $command = join(" ", @_);
  print "$command\n";
  system($command);
}
