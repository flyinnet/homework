#!/bin/bash
source ./triangle_v-0.1.sh -t
#for (( s1=100; s1 < 103; s1++ ))
#{
#	echo "$s1 $s2 $s3"
#	for (( s2=100; s2 < 103; s2++ ))
#	{
#		echo "$s1 $s2 $s3"
#		for (( s3=100; s3 < 103; s3++ ))
#		{
#			echo "$s1 $s2 $s3"
#		}
#	}
#}
#Треугольник равнобедренный
#for (( s1=100; s1 < 103; s1++ ))
#{
#	[ "$(test $s1 $s1 $s1)" = "Треугольник равносторонний" ]
#}
#Треугольник равнобедренный
#for (( s1=100, s2=101; s1 < 103; s1++,s2++ ))
#{ 
#	[ "$(test $s1 $s1 $s2)" = "Треугольник равнобедренный" ]
#	[ "$(test $s1 $s2 $s2)" = "Треугольник равнобедренный" ]
#	[ "$(test $s1 $s2 $s1)" = "Треугольник равнобедренный" ]
#	[ "$(test $s2 $s1 $s1)" = "Треугольник равнобедренный" ]
#	[ "$(test $s2 $s1 $s2)" = "Треугольник равнобедренный" ]
#	[ "$(test $s2 $s2 $s1)" = "Треугольник равнобедренный" ]
#}

for (( s1=100; s1 < 103; s1++ ))
{
	for (( s2=100; s2 < 103; s2++ ))
	{
		for (( s3=100; s3 < 103; s3++ ))
		{
			echo "$s1 $s2 $s3"
			if ! [ "$s1" -eq "$s2" -a "$s1" -eq "$s3" ]; then
				echo "$s1 $s2 $s3"
#				[ "$(test 1 2 3)" = "Обчычный треугольник" ]
			fi
		}
	}
}