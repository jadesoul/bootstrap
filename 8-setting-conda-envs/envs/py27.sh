#!/usr/bin/env bash
name=py27
version=2.7.15

{
	conda deactivate
	conda activate $name
} || {
	conda create -n $name python==$version
	conda activate $name
}
