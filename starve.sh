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
    -iname CODEOWNERS -or \
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
    -name .documentup.json -or \
    -name .editorconfig -or \
    -name .eslintignore -or \
    -name .eslintrc -or \
    -name .eslintrc.js -or \
    -name .eslintrc.json -or \
    -name .eslintrc.yml -or \
    -name .flowconfig -or \
    -name .gitattributes -or \
    -name .gitlab-ci.yml -or \
    -name .gitmodules -or \
    -name .htmllintrc -or \
    -name .jscs.json -or \
    -name .jshintrc -or \
    -name .lint -or \
    -name .npmignore -or \
    -name .npmrc -or \
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
