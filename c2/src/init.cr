require "./c2"

print <<-'EOF'

                __ __          ______ 
  .-----.--.--.|__|  |--.----.|__    |
  |  -__|  |  ||  |     |  __||    __|
  |_____|\___/ |__|__|__|____||______|                                
  01100101 01110110 01101001 01101000 01100011 00110010 

  - @author Halis Duraki <duraki@linuxmail.org>
  - @web    https://duraki.github.io/evih/

  Use -h for informational help.

EOF

C2::CLI.run(ARGV)
