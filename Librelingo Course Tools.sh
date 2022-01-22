#!/bin/bash

if [ "$1" = "help" ]; then
   wget -O- -q https://raw.githubusercontent.com/cutthroat78/Librelingo-Course-Tools/main/README.md
else
  if [ "$1" = "init" ]; then
    mkdir ./course
    cp ./files/course.yaml ./course/course.yaml
    echo "Course Folder and File Made"
  else
    if [ "$1" = "modules" ]; then
        for module in "${@:2}"
        do 
            mkdir -p ./course/"$module"/skills
            cp ./files/module.yaml ./course/"$module"/module.yaml
            sed -i "2s/.*/  Name: \"$module\"/g" ./course/"$module"/module.yaml
            echo "  - $module/" >> ./course/course.yaml
            echo "Created Module: $module"
        done
    else
      if [ "$1" = "skills" ]; then
        module="$2"
        for skill in "${@:2,3}"
        do
            cp ./files/skill.yaml ./course/"$module"/skills/"$skill".yaml
            sed -i "2s/.*/  Name: $skill/g" ./course/"$module"/skills/"$skill".yaml
            echo "  - $skill" >> ./course/"$module"/module.yaml
            echo "Created Skill: $skill"
        done
      fi
    fi
  fi
fi