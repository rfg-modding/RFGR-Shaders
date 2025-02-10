# RFGR-Shaders
Project to recreate the RFGR shader source code. The Shaders folder has the shaders. The code is very messy currently as its generated automatically tools. The generation process is:
- Extract the DXBC bytecode from the games .fxo_kg files.
- Use code from DXVK to decode the DXBC data and generate SPIRV from it.
- Use SPIRV-Cross to generate HLSL code from the SPIRV.

The code for generating them hasn't been published yet since this is just the first attempt this. There's information in the generated code thats missing or incomplete such as the vertex format definitions and the names & definitions of different input constants. There's also many ways the code could be simplified. Such as things like `asfloat(1065353216u)`, which is just `1.0f`. The plan is to use tools to cleanup the generated code as best as we can. Then manually clean up the code the rest of the way. 
