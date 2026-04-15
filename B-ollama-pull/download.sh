set -x

pull() {
	family=$1
	version=$2
	tag=$3

	model=${family}${version}:$tag
	ollama pull $model
}

###

family=gemma
version=4

for tag in e2b e4b #26b 31b
do
	pull $family $version $tag
done
	
###

family=qwen

version=3.5
for tag in 0.8b 2b 4b 9b #27b 35b
do
	pull $family $version $tag
done
	
version=3
for tag in 0.6b 1.7b 4b 8b 14b #30b 32b
do
	pull $family $version $tag
done

version=2.5
for tag in 0.5b 1.5b 3b 7b 14b #32b
do
	pull $family $version $tag
done


###


