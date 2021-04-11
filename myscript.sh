#!/bin/bash


echo Starting base case test...
perf stat ./whetstoneBaseCase 200000


echo Starting loop fusion...
perf stat ./whetstoneOne 200000


echo Starting loop unrolling...
perf stat ./whetstoneTwo 200000


echo Starting loop peeling...
perf stat ./whetstoneThree 200000


echo Starting all three optimizations...
perf stat ./whetstoneFour 200000

echo All done!
