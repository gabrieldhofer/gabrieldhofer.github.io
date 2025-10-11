j(){
  # ++-----------------------++
  #       || author: gabriel hofer ||
  # ++-----------------------++
  #https://stackoverflow.com/questions/54161556/how-can-i-show-all-the-branches-in-a-repository
  clear -x
  echo -e "-------\e[1;94m--------- GIT BRANCHES -------------\e[0m"
  git branch 
  echo -e "-------\e[1;94m+-------- ALIASES ------------------\e[0m"
  printf "\e[0;35m  %-4s | %-4s \e[0m\n" "dsk" "$HOME/Desktop/"
  printf "\e[0;35m  %-4s | %-4s \e[0m\n" "ek" "$HOME/Desktop/explore-kaggle/may30"
  printf "\e[0;35m  %-4s | %-4s \e[0m\n" "io" "$HOME/Desktop/gabrieldhofer.github.io"
  printf "\e[0;35m  %-4s | %-4s \e[0m\n" "res" "$HOME/Desktop/Resumes"
  printf "\e[0;35m  %-4s | %-4s \e[0m\n" "adv" "$HOME/Desktop/advent24"
  echo -e "-------\e[1;94m+-------- FILES --------------------\e[0m"
  i=1
  for f in *
  do
    if [[ -f $f ]]
    then
      if [[ -x $f ]]
      then 
        if [[ $f == "__sept05_2024__.py" || $f == "__ad_hoc__.py" ]]
        then
          #echo -e "\e[1;35m     $i. $f \e[0m"
          printf "\e[1;35m  %-4s | %-4s \e[0m\n" "$i" "$f"
        else
          #echo -e "\e[1;36m     $i. $f \e[0m"
          printf "\e[1;36m  %-4s | %-4s \e[0m\n" "$i" "$f"
        fi
      else 
        #echo -e "\e[1;36m     $i. $f \e[0m"
        printf "\e[1;36m  %-4s | %-4s \e[0m\n" "$i" "$f"
      fi 
      alias $i=" vi '$f' "      
      i=$((i+1))              
    fi 
  done
  echo -e "-------\e[1;94m+-------- DIRS ---------------------\e[0m"
  for f in * 
  do 
    if [[ -d $f ]]
    then 
      printf "\e[1;33m  %-4s | %-4s \e[0m\n" "$i" "$f"
      alias $i=" cd '$f' ; j "      
      i=$((i+1))
    fi 
  done
}

