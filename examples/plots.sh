#!/bin/bash

# Generates the graphViz plots for the visualize-example.mlir file
./../circt/build/bin/circt-opt --hw-print-module-graph visualize-example.mlir -o /dev/null 2>&1 | awk '/^digraph/{f="graph"++c".dot"} {print > f}' 
dot -Tpng graph1.dot -o visualize-example-module-graph-1.png
dot -Tpng graph2.dot -o visualize-example-module-graph-2.png

./../circt/build/bin/circt-opt --hw-print-instance-graph visualize-example.mlir -o /dev/null 2>&1 | dot -Tpng -o visualize-example-instance-graph.png