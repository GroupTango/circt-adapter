# main.py

from typing import Dict
from model_explorer import *

class MyAdapter(Adapter):

  metadata = AdapterMetadata(id='circt_adapter',
                             name='CIRCT Adapter',
                             description='Model Explorer Adapter for CIRCT generated JSON and MLIR files."',
                             source_repo='https://github.com/GroupTango/circt-adapter/tree/main',
                             fileExts=['mlir', 'json'])

  # Required.
  def __init__(self):
    super().__init__()

  def convert(self, model_path: str, settings: Dict) -> ModelExplorerGraphs:
    
    src_string = ""
    with open(model_path, mode='rb') as src_file:
      src_string = src_file.read()
    
    if (model_path.endswith(".mlir")):
      src_string = ConvertCirctToJson(src_string)
    
    return {'graphs': ConvertJsonToGraphs(src_string)}

def ConvertCirctToJson(mlir_str: str) -> str:
  #Add C++ call here
  return ""

def ConvertJsonToGraphs(json_str: str):
  #Temporarily return hardcoded graph, based on example mlir file
  graph1 = graph_builder.Graph(id='test_mlir_file')
  
  moduleA1 = graph_builder.GraphNode(id='ia1', label='input', namespace='Module A')
  combA1 = graph_builder.GraphNode(id='ca1', label='comb', namespace='Module A')
  seqA1 = graph_builder.GraphNode(id='sa1', label='seq', namespace='Module A')
  outputA1 = graph_builder.GraphNode(id='oa1', label='output', namespace='Module A')

  graph1.nodes.extend([moduleA1, combA1, seqA1, outputA1])

  combA1.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='ia1'))
  seqA1.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='ca1'))
  outputA1.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='sa1'))

  moduleA1.attrs.append(graph_builder.KeyValue(key="type", value="hw.module"))
  moduleA1.attrs.append(graph_builder.KeyValue(key="in parameters", value="%clk: !seq.clock, %in0 : i32, %in1 : i32"))
  moduleA1.attrs.append(graph_builder.KeyValue(key="out parameters", value="out0 : i32"))
  
  combA1.attrs.append(graph_builder.KeyValue(key="type", value="comb.add"))
  combA1.attrs.append(graph_builder.KeyValue(key="operands", value="%in0, %in1"))
  combA1.attrs.append(graph_builder.KeyValue(key="results", value="%0 = i32"))
  combA1.style = graph_builder.backgroundColor = "yellow"
  
  seqA1.attrs.append(graph_builder.KeyValue(key="type", value="seq.compreg"))
  seqA1.attrs.append(graph_builder.KeyValue(key="operands", value="%0, %clk"))
  seqA1.attrs.append(graph_builder.KeyValue(key="results", value="%1 = i32"))
  seqA1.style = graph_builder.backgroundColor = "green"
    
  outputA1.attrs.append(graph_builder.KeyValue(key="type", value="hw.output"))
  outputA1.attrs.append(graph_builder.KeyValue(key="operands", value="%1"))

  return [graph1]

def CloneModule(src_node : graph_builder.GraphNode) -> graph_builder.GraphNode:
  return None
  
