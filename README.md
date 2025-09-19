# RFGR-Shaders
Project to recreate the RFGR shader source code. The Shaders folder has the shaders. The code is very messy currently as its generated automatically by tools.

## HLSL generation process
- Extract the DXBC bytecode from the games .fxo_kg files. See the `ShaderFile` class in [RFGM.Formats](https://github.com/rfg-modding/RFGM.Formats/blob/master/RFGM.Formats/Shaders/ShaderFile.cs). See the VertexShadersBytecode and PixelShadersBytecode fields.
- Use code from DXVK to decode the DXBC data and generate SPIRV from it. Specifically load the shader bytecode into `dxvk::DxbcReader` and pass that into `dxvk::DxbcModule`, then compile it into spirv bytecode. [DXVK](https://github.com/doitsujin/dxvk/tree/master/src/dxbc).
- Use SPIRV-Cross to generate HLSL code from the SPIRV.

The code for converting the DXBC -> SPIRV -> HLSL has unfortunately been lost. But it should be reasonably easy to recreate by using the DXBC classes from DXVK and the SPIRV-Cross library as described above. This repo was created in a fairly short time to test the idea, and has a lot of room for improvement. 

There's information in the generated code thats missing or incomplete such as the vertex format definitions and the names & definitions of different input constants. There's also many ways the code could be simplified. Such as things like `asfloat(1065353216u)`, which is just `1.0f`. Ideally code cleanup like that would be automated with tools. Then manually clean up the code the rest of the way. 

## Shaders folder structure
- The top level folders such as "Terrain" and "Character" are the categories the game assigns to each of these shaders.
- Inside those folders you'll find many other folders. Each of those subfolders corresponds to one of the games .fxo_kg files. So for example `/RFGR-Shaders/Shaders/Terrain/rl_terrain_height_mesh_blend_t/` corresponds to `rl_terrain_height_mesh_blend_t.fxo_kg`.
- Each fxo_kg file can have multiple vertex shaders and pixel shaders. Those are stored in the subfolders as separate .hlsl files with either the `_vs` or `_ps` postfix to indicate whether if they're a vertex or pixel shader, followed by their index.
- Inside each subfolder you'll find a `ShaderMetadata.json` file. These contain all the data from the source .fxo_kg file. Since some data gets lost during the HLSL generation process.
