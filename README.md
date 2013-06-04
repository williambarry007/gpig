GPig
====

Usage: gpig &lt;version_file&gt; &lt;git_repo_url&gt;

This tool helps with gem development.  It allows a developer to quickly develop gems by doing the following:

1.  Increments the version of a gem.
2.  Adds all changed files to the current git repo.
3.  Commits all those changes to the git repo.
4.  Pulls any changes from the repo's origin.
5.  Pushes any changes to the origin.
6.  Runs gem specific_install to install the gem from the git repo URL.

Assumptions:

- Your gemspec references a VERSION variable.

<pre>
Gem::Specification.new do |s|
  s.name        = "gpig"
  s.version     = Gpig::VERSION
  ..
  ..
</pre>

- That VERSION variable is referenced in a version file that you give to gpig.

<pre>
module Gpig
  VERSION = '0.0.1'
end
</pre>

Example:

- Create a new gem.
- Make a change.
- Run gpig.
- Test the new version of your gem.
- Repeat :)

