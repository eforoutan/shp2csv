cwlVersion: v1.2
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: eforoutan/shp2csv:latest
  NetworkAccess:
    networkAccess: true

inputs:
  shapefile:
    type: Directory
    inputBinding:
      position: 1

  output_csv:
    type: string
    inputBinding:
      position: 2


outputs:
  csv_file:
    type: File
    outputBinding:
      glob: $(inputs.output_csv)


requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: shapefile.shp
        entry: $(inputs.shapefile.path)

baseCommand: ["python", "/app/shp2csv.py"]   