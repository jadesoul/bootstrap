for name in profile aliases; do
	file=${HOME}/.bash_${name}
	test -f $file && mv $file $file.bak
	cp .bash_${name} $file
done
