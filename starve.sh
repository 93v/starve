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
    -name .dockerignore -or \
    -name .doclets.yml -or \
    -name .documentup.json -or \
    -name .editorconfig -or \
    -name .eslintignore -or \
    -name .eslintrc -or \
    -name .eslintrc.js -or \
    -name .eslintrc.json -or \
    -name .eslintrc.yml -or \
    -name .flowconfig -or \
    -name .gitattributes -or \
    -name .gitignore -or \
    -name .gitlab-ci.yml -or \
    -name .gitmodules -or \
    -name .htmllintrc -or \
    -name .jscs.json -or \
    -name .jshintrc -or \
    -name .lint -or \
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
    -name .yarn-integrity -or \
    -name .yarn-metadata.json -or \
    -name .yarnclean -or \
    -name .yo-rc.json -or \
    -name .zuul.yml -or \
    -name "*~" -or \
    -name "*.1" -or \
    -name "*.a.d" -or \
    -name "*.c" -or \
    -name "*.cc" -or \
    -name "*.coffee" -or \
    -name "*.cpp" -or \
    -name "*.dntrc" -or \
    -name "*.exp" -or \
    -name "*.gyp" -or \
    -name "*.gypi" -or \
    -name "*.h" -or \
    -name "*.jpg" -or \
    -name "*.jst" -or \
    -name "*.lib" -or \
    -name "*.Makefile" -or \
    -name "*.markdown" -or \
    -name "*.md" -or \
    -name "*.mkd" -or \
    -name "*.node.mk" -or \
    -name "*.o.d" -or \
    -name "*.obj" -or \
    -name "*.patch" -or \
    -name "*.pdb" -or \
    -name "*.pl" -or \
    -name "*.png" -or \
    -name "*.py" -or \
    -name "*.pyc" -or \
    -name "*.rb" -or \
    -name "*.S" -or \
    -name "*.s" -or \
    -name "*.sln" -or \
    -name "*.swp" -or \
    -name "*.target.mk" -or \
    -name "*.tgz" -or \
    -name "*.tlog" -or \
    -name "*.txt" -or \
    -name "*.vcxproj.filters" -or \
    -name "*.vcxproj" -or \
    -name "*benchmark*" -or \
    -name "*LICENCE*" -or \
    -name "*LICENSE*" -or \
    -name appveyor.yml -or \
    -name AUTHORS -or \
    -name benchmarks -or \
    -name builderror.log -or \
    -name Cakefile -or \
    -name circle.yml -or \
    -name coverage -or \
    -name desktop.ini -or \
    -name docs -or \
    -name eslint -or \
    -name example -or \
    -name example.js -or \
    -name examples -or \
    -name Gruntfile.js -or \
    -name gyp -or \
    -name htmllint.js -or \
    -name Jenkinsfile -or \
    -name jest.config.js -or \
    -name jsdoc.json -or \
    -name jsl.node.conf -or \
    -name karma.conf.js -or \
    -name node-gyp -or \
    -name node-pre-gyp -or \
    -name npm-debug.log -or \
    -name prettier.config.js -or \
    -name robot.html -or \
    -name screenshots -or \
    -name stylelint.config.js -or \
    -name tests -or \
    -name thumbs.db -or \
    -name tsconfig.json -or \
    -name tslint.json -or \
    -name usage.txt -or \
    -name Vagrantfile -or \
    -name wallaby.conf.js -or \
    -name wallaby.js -or \
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
    -name example -or \
    -name examples -or \
    -name gyp -or \
    -name images -or \
    -name node-gyp -or \
    -name node-pre-gyp -or \
    -name powered-test -or \
    -name test -or \
    -name tests -or \
    -name website \
  \) -print0 \; | xargs -0 rm -rf

echo ""
echo "After starvation: "$(du -hs .)
echo "Files count: "$(find node_modules/ -type f | wc -l)
