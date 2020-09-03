# Infinite recursion on type invariants

Type invariants should be called before and after every public subprogram call involving the type. So what happens if an invariant itself calls a public subprogram?

Go into src/places.ads and uncomment the relevant lines to see for yourself; there are both a function and a procedure that do nothing, so that you can see if there is any difference.

# Results

It turns out that type invariants containing a call to a public function is the only case that will infinitely recurse. Calling a private subprogram is fine, as is calling a public procedure.

# Usage

You should clone this repository and either open the gpr file in GNAT Studio and click compile & run, or do the same with `gprbuild`. Then run /obj/main - the expected behaviour is that it prints the fact that (0.8, 0.2) is within the unit circle, but if you cause Places.Check_In to call a public function, then you will get a "Segmentation fault" instead.
