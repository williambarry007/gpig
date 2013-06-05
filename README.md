GPIG (Git Push Install Gem)
Gpig is a nice little tool to help speed up gem development.  It does the following:

1.  Increments the version of a gem.
2.  Adds all changed files to the current git repo.
3.  Commits all those changes to the git repo.
4.  Pulls any changes from the repo's origin.
5.  Pushes any changes to the origin.
6.  Runs gem specific_install to install the gem from the git repo URL.

Usage: gpig [options]

Options:

--version        Shows the currently installed version of gpig.
--conf_file      The configuration file, defaults to .gpig in the current directory.
--increment      Whether or not to increment the version, defaults to true.
--version_file   The version file that holds the VERSION variable that will be incremented.
--repo_url       The URL of the git repo from which the new gem will be installed.
--remote         The remote to which the local code changes will be pushed, defaults to origin.
--branch         The branch to which the local code changes will be committed, defaults to master.
--commit_message The message when committing files to the repo, defaults to "More changes".

Assumptions:

- Your gemspec references a VERSION variable.

<pre>
Gem::Specification.new do |s|
  s.name        = "gpig"
  s.version     = Gpig::VERSION
  ...
</pre>

- That VERSION variable is referenced in a version file that you give to gpig.

<pre>
module Gpig
  VERSION = '0.0.1'
end
</pre>
