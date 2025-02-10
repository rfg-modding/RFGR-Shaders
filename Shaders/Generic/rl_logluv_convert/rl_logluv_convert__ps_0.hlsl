uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
};

static float4 shader_in[2];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _47 = r0;
    _47.z = (r0.z * asfloat(1132396544u)) + r0.w;
    r0 = _47;
    float4 _54 = r0;
    _54.z = r0.z + asfloat(3271426048u);
    r0 = _54;
    float4 _61 = r0;
    _61.z = r0.z * asfloat(1056964608u);
    r0 = _61;
    float4 _67 = r1;
    _67.y = exp2(r0.z);
    r1 = _67;
    float4 _74 = r1;
    _74.z = r1.y / r0.y;
    r1 = _74;
    float4 _81 = r1;
    _81.x = r0.x * r1.z;
    r1 = _81;
    float3 _91 = asfloat(uint3(1086327462u, 3215621882u, 1050277210u));
    float4 _101 = r0;
    _101.x = mad(r1.xyz.z, _91.z, mad(r1.xyz.y, _91.y, r1.xyz.x * _91.x));
    r0 = _101;
    float3 _109 = asfloat(uint3(3224161485u, 1078367722u, 3213575062u));
    float4 _119 = r0;
    _119.y = mad(r1.xyz.z, _109.z, mad(r1.xyz.y, _109.y, r1.xyz.x * _109.x));
    r0 = _119;
    float3 _127 = asfloat(uint3(3219543556u, 3233330233u, 1085542079u));
    float4 _137 = r0;
    _137.z = mad(r1.xyz.z, _127.z, mad(r1.xyz.y, _127.y, r1.xyz.x * _127.x));
    r0 = _137;
    float3 _144 = max(r0.xyz, asfloat(uint3(0u, 0u, 0u)));
    o0 = float4(_144.x, _144.y, _144.z, o0.w);
    float4 _149 = o0;
    _149.w = asfloat(1065353216u);
    o0 = _149;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    frag_main();
}
