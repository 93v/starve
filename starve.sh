#!/usr/bin/env sh

echo "Putting node_modules on diet..."
echo ""
echo "Before starvation: "$(du -hs .)
echo "Files count: "$(find node_modules/ -type f | wc -l)

# Unnecessary files
find . -type d -name node_modules -prune -exec find {} -type f \( \
    -iname .DS_Store -or \
    -iname AUTHORS -or \
    -iname CHANGELOG -or \
    -iname CHANGELOG.md -or \
    -iname CHANGES -or \
    -iname CODEOWNERS -or \
    -iname CONTRIBUTING -or \
    -iname CONTRIBUTORS -or \
    -iname Gruntfile.js -or \
    -iname Gulpfile.js -or \
    -iname LICENCE -or \
    -iname LICENCE-BSD -or \
    -iname LICENCE-jsbn -or \
    -iname LICENCE-MIT -or \
    -iname LICENCE-MIT.txt -or \
    -iname LICENCE.BSD -or \
    -iname LICENCE.markdown -or \
    -iname LICENCE.md -or \
    -iname LICENCE.mkd -or \
    -iname LICENCE.txt -or \
    -iname LICENSE -or \
    -iname LICENSE-BSD -or \
    -iname LICENSE-jsbn -or \
    -iname LICENSE-MIT -or \
    -iname LICENSE-MIT.txt -or \
    -iname LICENSE.BSD -or \
    -iname LICENSE.markdown -or \
    -iname LICENSE.md -or \
    -iname LICENSE.mkd -or \
    -iname LICENSE.txt -or \
    -iname Makefile -or \
    -iname MIT-LICENSE.txt -or \
    -iname NOTICE.txt -or \
    -iname README -or \
    -iname README.markdown -or \
    -iname README.md -or \
    -iname README.md~ -or \
    -iname README.mkd -or \
    -iname UNLICENSE -or \
    -name _config.yml -or \
    -name _test -or \
    -name .appveyor.yml -or \
    -name .babelrc -or \
    -name .coveralls.yml -or \
    -name .dir-locals.el -or \
    -name .dntrc -or \
    -name .dockerignore -or \
    -name .doclets.yml -or \
    -name .documentup.json -or \
    -name .editorconfig -or \
    -name .eslintignore -or \
    -name .eslintrc -or \
    -name .eslintrc.js -or \
    -name .eslintrc.json -or \
    -name .eslintrc.yml -or \
    -name .eslinttignore -or \
    -name .flowconfig -or \
    -name .gitattributes -or \
    -name .gitignore -or \
    -name .gitkeep -or \
    -name .gitlab-ci.yml -or \
    -name .gitmodules -or \
    -name .gradle -or \
    -name .htmllintrc -or \
    -name .istanbul.yml -or \
    -name .jamignore -or \
    -name .jsbeautifyrc -or \
    -name .jscs.json -or \
    -name .jscsrc -or \
    -name .jshintignore -or \
    -name .jshintrc -or \
    -name .lint -or \
    -name .lintignore -or \
    -name .npmignore -or \
    -name .npmrc -or \
    -name .nvmrc -or \
    -name .prettierrc -or \
    -name .prettierrc.js -or \
    -name .prettierrc.json -or \
    -name .prettierrc.toml -or \
    -name .prettierrc.yml -or \
    -name .stylelintrc -or \
    -name .stylelintrc.js -or \
    -name .stylelintrc.json -or \
    -name .stylelintrc.yaml -or \
    -name .stylelintrc.yml -or \
    -name .tern-port -or \
    -name .tern-project -or \
    -name .travis.yml -or \
    -name .vimrc -or \
    -name .yarn-integrity -or \
    -name .yarn-metadata.json -or \
    -name .yarnclean -or \
    -name .yo-rc.json -or \
    -name .zuul.yml -or \
    -name "*.1" -or \
    -name "*.a.d" -or \
    -name "*.all-contributorsrc" -or \
    -name "*.bak" -or \
    -name "*.bat" -or \
    -name "*.bazel" -or \
    -name "*.bnf" -or \
    -name "*.c" -or \
    -name "*.cc" -or \
    -name "*.clj" -or \
    -name "*.cljs" -or \
    -name "*.cmd" -or \
    -name "*.coffee" -or \
    -name "*.cpp" -or \
    -name "*.cs" -or \
    -name "*.csproj" -or \
    -name "*.css" -or \
    -name "*.dntrc" -or \
    -name "*.eot" -or \
    -name "*.eslintignore" -or \
    -name "*.eslintirgnore" -or \
    -name "*.exp" -or \
    -name "*.fish" -or \
    -name "*.fs" -or \
    -name "*.fsproj" -or \
    -name "*.gif" -or \
    -name "*.gnu" -or \
    -name "*.go" -or \
    -name "*.gradle" -or \
    -name "*.groovy" -or \
    -name "*.gyp" -or \
    -name "*.gypi" -or \
    -name "*.h" -or \
    -name "*.html" -or \
    -name "*.http" -or \
    -name "*.icns" -or \
    -name "*.ico" -or \
    -name "*.jar" -or \
    -name "*.java" -or \
    -name "*.jpg" -or \
    -name "*.js.gz" -or \
    -name "*.js.map" -or \
    -name "*.json~" -or \
    -name "*.jst" -or \
    -name "*.kt" -or \
    -name "*.l" -or \
    -name "*.lcov" -or \
    -name "*.lib" -or \
    -name "*.log" -or \
    -name "*.Makefile" -or \
    -name "*.map" -or \
    -name "*.markdown" -or \
    -name "*.md" -or \
    -name "*.mdown" -or \
    -name "*.mf" -or \
    -name "*.mjs" -or \
    -name "*.mkd" -or \
    -name "*.nib" -or \
    -name "*.node.mk" -or \
    -name "*.nojekyll" -or \
    -name "*.nuspec" -or \
    -name "*.nycrc" -or \
    -name "*.o.d" -or \
    -name "*.obj" -or \
    -name "*.orig" -or \
    -name "*.patch" -or \
    -name "*.pdb" -or \
    -name "*.pegjs" -or \
    -name "*.php" -or \
    -name "*.pl" -or \
    -name "*.plist" -or \
    -name "*.PNG" -or \
    -name "*.png" -or \
    -name "*.ps1" -or \
    -name "*.py" -or \
    -name "*.pyc" -or \
    -name "*.rb" -or \
    -name "*.rej" -or \
    -name "*.remarkrc" -or \
    -name "*.rs" -or \
    -name "*.rtf" -or \
    -name "*.S" -or \
    -name "*.s" -or \
    -name "*.scala" -or \
    -name "*.sln" -or \
    -name "*.swift" -or \
    -name "*.swp" -or \
    -name "*.target.mk" -or \
    -name "*.tgz" -or \
    -name "*.tlog" -or \
    -name "*.tm_properties" -or \
    -name "*.todo" -or \
    -name "*.ttf" -or \
    -name "*.txt" -or \
    -name "*.vcxproj.filters" -or \
    -name "*.vcxproj" -or \
    -name "*.watchr" -or \
    -name "*.webidl" -or \
    -name "*.whitelist" -or \
    -name "*.woff" -or \
    -name "*.zsh" -or \
    -name "*~" -or \
    -name "*benchmark*" -or \
    -name "*LICENCE*" -or \
    -name "*LICENSE*" -or \
    -name appveyor.yml -or \
    -name AUTHORS -or \
    -name benchmarks -or \
    -name binding.gyp -or \
    -name bower.json -or \
    -name builderror.log -or \
    -name Cakefile -or \
    -name circle.yml -or \
    -name component.json -or \
    -name composer.json -or \
    -name coverage -or \
    -name desktop.ini -or \
    -name docs -or \
    -name eslint -or \
    -name example -or \
    -name examples -or \
    -name gemfile -or \
    -name Gruntfile.js -or \
    -name gyp -or \
    -name history.markdown -or \
    -name history.md -or \
    -name htmllint.js -or \
    -name Jenkinsfile -or \
    -name jest.config.js -or \
    -name jsdoc.json -or \
    -name jsl.conf -or \
    -name jsl.node.conf -or \
    -name karma.conf.js -or \
    -name node-gyp -or \
    -name node-pre-gyp -or \
    -name npm-debug.log -or \
    -name package-lock.json -or \
    -name prettier.config.js -or \
    -name rakefile -or \
    -name robot.html -or \
    -name screenshots -or \
    -name stylelint.config.js -or \
    -name tests -or \
    -name thumbs.db -or \
    -name tsconfig.json -or \
    -name tsconfig.tsbuildinfo -or \
    -name tslint.json -or \
    -name usage.txt -or \
    -name Vagrantfile -or \
    -name wallaby.conf.js -or \
    -name wallaby.js -or \
    -name wercker.yml -or \
    -name yarn.lock -or \
    \( -name '*.ts' -and \! -name '*.d.ts' \) \
  \) -print0 \; | xargs -0 rm -rf

# Unnecessary folders
find . -type d -name node_modules -prune -exec find {} -type d \( \
    -name __tests__ -or \
    -name .circleci -or \
    -name .github -or \
    -name .idea -or \
    -name .nyc_output -or \
    -name .vscode -or \
    -name assets -or \
    -name coverage -or \
    -name doc -or \
    -name docs -or \
    -name draft-00 -or \
    -name draft-01 -or \
    -name draft-02 -or \
    -name draft-03 -or \
    -name draft-04 -or \
    -name example -or \
    -name examples -or \
    -name gyp -or \
    -name images -or \
    -name node-gyp -or \
    -name node-pre-gyp -or \
    -name powered-test -or \
    -name samples -or \
    -name test -or \
    -name tests -or \
    -name website \
  \) -print0 \; | xargs -0 rm -rf

# Empty folders
find node_modules -type d -empty -delete

echo ""
echo "After starvation: "$(du -hs .)
echo "Files count: "$(find node_modules/ -type f | wc -l)
