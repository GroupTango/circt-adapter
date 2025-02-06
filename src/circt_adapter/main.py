# main.py

from typing import Dict
from model_explorer import Adapter, AdapterMetadata, ModelExplorerGraphs, graph_builder

class MyAdapter(Adapter):

  metadata = AdapterMetadata(id='circt_adapter',
                             name='CIRCT Adapter',
                             description='Model Explorer Adapter for CIRCT generated MLIR files."',
                             source_repo='https://github.com/GroupTango/circt-adapter/tree/main',
                             fileExts=['mlir'])

  # Required.
  def __init__(self):
    super().__init__()

  def convert(self, model_path: str, settings: Dict) -> ModelExplorerGraphs:
    return {'graphs': ConvertJsonToGraphs("")}

def add_distance_output_metadata(from_node: graph_builder.GraphNode, distance: str):
    from_node.outputsMetadata.append(graph_builder.MetadataItem(id='0',attrs=[graph_builder.KeyValue(key='distance', value=distance)]))

def ConvertCirctToJson(model_path: str) -> str:
    return None

def ConvertJsonToGraphs(json_str: str):
    graph1 = graph_builder.Graph(id='test_mlir_file')
    
    vancouver = graph_builder.GraphNode(id='vancouver', label='Vancouver', namespace='')
    la = graph_builder.GraphNode(id='la', label='Los Angeles', namespace='')
    seattle = graph_builder.GraphNode(id='seattle', label='Seattle', namespace='CoastalDrive')
    sf_golden_gate_bridge = graph_builder.GraphNode(id='sf_golden_gate_bridge', label='Golden gate bridge', namespace='CoastalDrive/SanFrancisco')
    sf_pier_39 = graph_builder.GraphNode(id='sf_pier_39', label='PIER 39', namespace='CoastalDrive/SanFrancisco')
    salt_lake_city = graph_builder.GraphNode(id='salt_lake_city', label='Salt lake city', namespace='InlandDrive')
    las_vegas = graph_builder.GraphNode(id='las_vegas', label='Las Vegas', namespace='InlandDrive')

    graph1.nodes.extend([vancouver, la, seattle, sf_golden_gate_bridge, sf_pier_39, salt_lake_city, las_vegas])

    la.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='sf_pier_39'))
    sf_pier_39.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='sf_golden_gate_bridge'))
    sf_golden_gate_bridge.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='seattle'))
    seattle.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='vancouver'))
    la.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='las_vegas', targetNodeInputId='1'))
    las_vegas.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='salt_lake_city'))

    # Vancouver has two outgoing edges to seattle and salt_lake_city.
    # We use sourceNodeOutputId to identify these two edges. Vancouver's output
    # id '0' (default) goes to seattle, and its output id '1' goes to salt_lake_city.
    salt_lake_city.incomingEdges.append(graph_builder.IncomingEdge(sourceNodeId='vancouver',sourceNodeOutputId='1'))

    temperatures = ['52F', '74F', '55F', '64F', '65F', '62F', '90F']
    for i, node in enumerate(graph1.nodes):
        node.attrs.append(graph_builder.KeyValue(key="temperature", value=temperatures[i]))

    vancouver.outputsMetadata.append(graph_builder.MetadataItem(id='0', attrs=[graph_builder.KeyValue(key='distance', value='230 km'), graph_builder.KeyValue(key='__tensor_tag', value='coastal')]))

    vancouver.outputsMetadata.append(graph_builder.MetadataItem(id='1', attrs=[graph_builder.KeyValue(key='distance', value='1554 km'),graph_builder.KeyValue(key='__tensor_tag', value='inland')]))

    add_distance_output_metadata(salt_lake_city, '677 km')
    add_distance_output_metadata(las_vegas, '439 km')
    add_distance_output_metadata(seattle, '1310 km')
    add_distance_output_metadata(sf_golden_gate_bridge, '10 km')
    add_distance_output_metadata(sf_pier_39, '613 km')

    la.inputsMetadata.append(graph_builder.MetadataItem(id='0', attrs=[graph_builder.KeyValue(key='__tensor_tag', value='coastal')]))
    la.inputsMetadata.append(graph_builder.MetadataItem(id='1', attrs=[graph_builder.KeyValue(key='__tensor_tag', value='inland')]))

    return [graph1]

