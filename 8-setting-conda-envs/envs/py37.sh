#!/usr/bin/env bash
name=py37
version=3.7

{
	conda deactivate
	conda activate $name
} || {
	conda create -n $name python==$version
	conda activate $name
}
