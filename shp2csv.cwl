cwlVersion: v1.2
class: CommandLineTool

hints:
  NetworkAccess:
    networkAccess: true
  DockerRequirement:
    dockerPull: eforoutan/shp2csv:latest


inputs:
  shapefile:
    type:
      - File
      - Directory
    inputBinding:
      position: 1

  csv_file_name:
    type: string
    default: default.csv
    inputBinding:
      position: 2


outputs:
  output_csv:
    type: File
    outputBinding:
      glob: "$(inputs.csv_file_name)"