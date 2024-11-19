# rev.1
function mount-cam {
	sudo veracrypt --text \
	--mount /dev/nvme0n1p6 /mnt/cam \
	--token-lib /usr/lib/x86_64-linux-gnu/opensc-pkcs11.so \
	--pim 0 -k token://slot/0/file/"Printed Information" \
	--protect-hidden no --slot 1 --verbose
}

function unmount-cam {
	sudo veracrypt --dismount /mnt/cam 
}
