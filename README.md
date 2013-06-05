<h1>GPIG (Git Push Install Gem)</h1>
<p>Gpig is a nice little tool to help speed up gem development.  It does the following:</p>
<ol>
<li>Increments the version of a gem.</li>
<li>Adds all changed files to the current git repo.</li>
<li>Commits all those changes to the git repo.</li>
<li>Pulls any changes from the repo's origin.</li>
<li>Pushes any changes to the origin.</li>
<li>Runs gem specific_install to install the gem from the git repo URL.</li>
</ol>
<p>Usage: <code>gpig [options]</code></p>
<p>Options:</p>
<dl>
<dt><code>--version        </code></dt><dd>Shows the currently installed version of gpig.</dd>
<dt><code>--conf_file      </code></dt><dd>The configuration file, defaults to .gpig in the current directory.</dd>
<dt><code>--increment      </code></dt><dd>Whether or not to increment the version, defaults to true.</dd>
<dt><code>--version_file   </code></dt><dd>The version file that holds the VERSION variable that will be incremented.</dd>
<dt><code>--repo_url       </code></dt><dd>The URL of the git repo from which the new gem will be installed.</dd>
<dt><code>--remote         </code></dt><dd>The remote to which the local code changes will be pushed, defaults to origin.</dd>
<dt><code>--branch         </code></dt><dd>The branch to which the local code changes will be committed, defaults to master.</dd>
<dt><code>--commit_message </code></dt><dd>The message when committing files to the repo, defaults to "More changes".</dd>
</dl>
<p>Assumptions:</p>
<ol>
<li><p>Your gemspec references a VERSION variable.</p>
<pre>
Gem::Specification.new do |s|
  s.name        = "gpig"
  s.version     = Gpig::VERSION
  ...
</pre>
</li>
<li><p>That VERSION variable is referenced in a version file that you give to gpig.</p>
<pre>
module Gpig
  VERSION = '0.0.1'
end
</pre>
</li>
</ol>
