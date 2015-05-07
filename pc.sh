#!/bin/bash

# ProjectManager

function treelist() {
    
    printf "\n\n"
    tree /opt/pc/templates/
    printf "\n\n"
    
}

function list() {
    
    printf "\n\n"
    ls -1 /opt/pc/templates/
    printf "\n\n"
    
}

function usage() {
    
    printf "\n\n\tUsage: pc [command]\n\n\tCommands:\n"
    printf "\t   list\t\t\t-- to show list of templates\n"
    printf "\t   tree\t\t\t-- to tree of templates\n"
    printf "\t   create [template]\t-- to create template\n"
    printf "\t   copy [template]\t-- to copy one template\n"
    printf "\n\n"
    
}

if [[ $# -eq 0 ]]
then
    usage
    exit 1
fi

if [[ "$1" == "list" ]]
then
    list
    exit 0
fi

if [[ "$1" == "tree" ]]
then
    treelist
    exit 0
fi

if [[ "$1" == "create" ]]
then
    printf "\n\nCreating $2... "
    cp /opt/pc/templates/$2/* .
    printf "[done]\n\n"
    exit 0
fi

if [[ "$1" == "copy" ]]
then
    printf "\n\nCopying $2... "
    cp /opt/pc/templates/$2 .
    printf "[done]\n\n"
    exit 0
fi

exit 0