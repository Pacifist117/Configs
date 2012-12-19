#!/bin/bash
for f in .* 
do 
    ln -fs /home/pacifist/.configs/$f /home/pacifist/$f
done
