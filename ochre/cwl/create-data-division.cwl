#!/usr/bin/env cwlrunner
cwlVersion: v1.0
class: CommandLineTool

requirements:
  EnvVarRequirement:
    envDef:
      LC_ALL: C.UTF-8
      LANG: C.UTF-8

baseCommand: ["python", "-m", "ochre.create_data_division"]

inputs:
  in_dir:
    type: Directory
    inputBinding:
      position: 1
  out_name:
    type: string?
    inputBinding:
      prefix: --out_name

outputs:
  metadata_out:
    type: File
    outputBinding:
      glob: "*.json"
