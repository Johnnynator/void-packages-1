#!/bin/sh
#
# changed_templates.sh

if command -v git >/dev/null 2>&1; then
	GIT_CMD=$(command -v git)
elif command -v chroot-git >/dev/null 2>&1; then
	GIT_CMD=$(command -v chroot-git)
fi
# We can't use chroot-get for fetching anything (?)

/bin/echo -e '\x1b[32mFetching upstream...\x1b[0m'
$GIT_CMD fetch --depth 200 git://github.com/void-linux/void-packages.git master
