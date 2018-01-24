#!/usr/bin/env bats

@test "when new folder with existing name is going to be created then error message is shown" { 
   # setup
   DIR=dirx
   mkdir ${DIR}

   [[ $(mkdir ${DIR} 2>&1) = "mkdir: cannot create directory ‘${DIR}’: File exists" ]] 
   

   #teardown
   rmdir ${DIR}

}

@test "when i create a new folder then folder is created" {

   #setup
   DIR=diry
   mkdir ${DIR} && [[ -d ${DIR} ]] #test if new folder is exits

   #teardown
   rmdir ${DIR}
}


@test "when i create a new folder then it  is empty" {

   #setup
   DIR=dirz
   mkdir ${DIR}
   [[ $(ls -a ${DIR} |wc -l) -eq 2 ]] #test if new folder is empty


   #teardown
   rmdir ${DIR}
}

@test "when i dint set name of folder then report" {

   #setup
  
  
   mkdir || [[ $(mkdir 2>&1) = "mkdir: missing operand
Try 'mkdir --help' for more information." ]]

}

@test "when not allowed charcters set then error" {
    #setup
    DIR=/ \ * " |
    mkdir ${DIR} || [[ $(mkdir 2>&1) = "bash: No such file or directory
mkdir: missing operand" ]]

}  

@test "when unknown option is given, then error message" {

    #setup
    #OUTPUT=$(mkdir -x folder 2>&1)
    [[ $(mkdir -x folder 2>&1) = "mkdir: invalid option -- 'x'
Try 'mkdir --help' for more information." ]]

}
