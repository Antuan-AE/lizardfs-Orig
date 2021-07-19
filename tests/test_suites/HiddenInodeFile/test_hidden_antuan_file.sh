CHUNKSERVERS=1 \
	USE_RAMDISK=YES \
	setup_local_empty_lizardfs info

cd ${info[mount0]}

EXPECTED_TEXT="Hello world!"
TEXT="$(cat .antuan)"

expect_equals "$TEXT" "$EXPECTED_TEXT"