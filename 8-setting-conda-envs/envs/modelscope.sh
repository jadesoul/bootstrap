#!/usr/bin/env bash
name=modelscope
version=3.7

{
	conda deactivate
	conda activate $name
} || {
	conda create -n $name python==$version
	conda activate $name
}
