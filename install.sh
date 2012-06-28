for x in {1..100}; do
	d=$x*
	if [ -d $d ]; then
		echo now go to $d
		cd $d 
		for f in *.sh; do
			fp=`pwd`/$f
			sudo chmod +x $fp
			echo now running $fp
			$fp
		done
		cd -
	fi
done
