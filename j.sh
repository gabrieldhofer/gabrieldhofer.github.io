j(){
  # ++-----------------------++
  # || author: gabriel hofer ||
  # ++-----------------------++
  # https://stackoverflow.com/questions/54161556/how-can-i-show-all-the-branches-in-a-repository
  clear -x
  if [ -d .git ]
  then
    echo -e "---------------- GIT BRANCHES -------------"
    CURRENT=$(git branch --show-current);
    i=1
    for branch in $(git branch --list | sed 's/\* //g'); do                                         
      if [[ $branch = $CURRENT ]]
      then
        printf "\e[1;32m  %-4s | %-4s \e[0m\n" "b$i" "$branch"
      else 
        printf "\e[1;30m  %-4s | %-4s \e[0m\n" "b$i" "$branch"
      fi 
      alias "b$i"=" git switch $branch ; j "      
      i=$((i+1))              
    done
  fi 
  # files first 
  echo -e "-------+-------- FILES --------------------"
  i=1
  for f in *
  do
    if [[ -f $f ]]
    then
      if [[ -x $f ]]
      then 
        if [[ $f == "main.sql" ]]
        then
          printf "\e[1;35m  %-4s | %-4s \e[0m\n" "f$i" "$f"
        else
          printf "\e[1;36m  %-4s | %-4s \e[0m\n" "f$i" "$f"
        fi
      else 
        printf "\e[1;36m  %-4s | %-4s \e[0m\n" "f$i" "$f"
      fi 
      alias "f$i"=" vi '$f' "      
      i=$((i+1))              
    fi 
  done
  # directories second
  echo -e "-------+-------- DIRS ---------------------"
  i=1
  for f in * 
  do 
    if [[ -d $f ]]
    then 
      printf "\e[1;33m  %-4s | %-4s \e[0m\n" "d$i" "$f"
      alias "d$i"=" cd '$f' ; j "      
      i=$((i+1))
    fi 
  done
}
