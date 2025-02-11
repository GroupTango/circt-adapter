# main.py
import json
from typing import Dict
from model_explorer import *
from model_explorer.utils import convert_builtin_resp
from model_explorer.types import GraphCollection, ModelExplorerGraphs

class MyAdapter(Adapter):

  metadata = AdapterMetadata(id='circt_adapter',
                             name='CIRCT Adapter',
                             description='Model Explorer Adapter for CIRCT generated JSON and MLIR files.',
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
    
    return {'graphCollections': ConvertJsonToGraphs(src_string)}

def ConvertCirctToJson(mlir_str: str) -> str:
  #Add C++ call here
  return ""

def ConvertJsonToGraphs(json_str: str):
  return convert_builtin_resp(json_str)

def CloneModule(src_node : graph_builder.GraphNode) -> graph_builder.GraphNode:
  return None
