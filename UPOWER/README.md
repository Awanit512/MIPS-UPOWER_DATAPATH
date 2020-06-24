

# DESCRIPTION

An implementation of a MIPS CPU written in Verilog.  This project is in
very early stages and currently only implements the most basic
functionality of a MIPS CPU.


 - Assignment implemented in Verilog

 - 5 stage pipeline

 - static branch not taken branch predictor

 - branch detection in decode (stage 2)

 - supports stalls to avoid read after write (RAW) and other hazards

 - can forward from memory (stage 4) and write back (stage 5)
   to avoid stalls

Much of the design was inspired by the book "Computer Organization and
Design" by David A. Patterson and John L. Hennessy (4th ed. 2008).

This Assignment also includes a full set of test benches.  These are
invaluable as a quick check to verify that new changes have not
disrupted previously working functionality.

# REQUIREMENTS

This project requires a Verilog simulator, such as [Icarus][iverilog],
the Gcc compiler, and a Gcc MIPS cross compiler.  To check if your
system has the required programs installed run the `check-install.sh`
script.

    $ ./check-install.sh
    Checking for required programs...
      mips-linux-gnu-objcopy
      mips-linux-gnu-as
      iverilog
    Please install the missing programs and retry.

  [iverilog]: http://iverilog.icarus.com

# RUNNING TEST BENCHES

The tests are located in the `verilog/test/` directory.  Everything is
built and run using the `make` command.

    make
