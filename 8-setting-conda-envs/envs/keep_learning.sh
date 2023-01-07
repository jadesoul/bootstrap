#!/usr/bin/env bash
name=keep_learning
version=3.8.8

{
	conda deactivate
	conda activate $name
} || {
	conda create -n $name python==$version
	conda activate $name
}
