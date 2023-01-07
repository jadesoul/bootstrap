#!/usr/bin/env bash
name=py36
version=3.6.8

{
	conda deactivate
	conda activate $name
} || {
	conda create -n $name python==$version
	conda activate $name
}
