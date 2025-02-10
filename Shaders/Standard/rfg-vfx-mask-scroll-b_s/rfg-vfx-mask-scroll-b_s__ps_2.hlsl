cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float4 v2;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
};

static float4 shader_in[3];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = (float4(cb2_m[1].x, cb2_m[1].y, cb2_m[1].x, cb2_m[1].y) * cb6_m[0].w.xxxx) + shader_in[2].zwxy;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    float3 _85 = (r1.zyx * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_85.x, _85.y, _85.z, r1.w);
    float2 _93 = r0.xy + (-r1.xy);
    r0 = float4(_93.x, _93.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, r0.xyxx.xy);
    r2 = r0 * float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float2 _126 = (r1.zy * asfloat(uint2(1036831949u, 1036831949u))) + shader_in[2].xy;
    r1 = float4(_126.x, _126.y, r1.z, r1.w);
    float4 _135 = r0;
    _135.w = cb6_m[0].w * asfloat(1132068864u);
    r0 = _135;
    float2 _146 = (cb6_m[0].w.xx * asfloat(uint2(0u, 1073741824u))) + r1.xy;
    r1 = float4(_146.x, _146.y, r1.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, r1.xyxx.xy);
    r3 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float4 _173 = r0;
    _173.w = sin(r0.wwww.w);
    r0 = _173;
    float4 _180 = r0;
    _180.w = r0.w + asfloat(1065353216u);
    r0 = _180;
    float4 _190 = r0;
    _190.w = (r0.w * asfloat(1041865114u)) + asfloat(1060320051u);
    r0 = _190;
    float4 _197 = r1;
    _197.x = r0.w * r2.w;
    r1 = _197;
    float4 _204 = r1;
    _204.y = r0.w * r3.w;
    r1 = _204;
    float4 _214 = r0;
    _214.w = (r2.w * r0.w) + r1.y;
    r0 = _214;
    float4 _224 = r0;
    _224.w = (r1.x * r1.y) + r0.w;
    r0 = _224;
    float4 _231 = r0;
    _231.w = r1.w * r0.w;
    r0 = _231;
    float4 _239 = r1;
    _239.x = clamp(shader_in[1].y, 0.0f, 1.0f);
    r1 = _239;
    float4 _246 = r0;
    _246.w = r0.w * r1.x;
    r0 = _246;
    float4 _258 = r1;
    _258.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _258;
    float4 _268 = r1;
    _268.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _268;
    float4 _278 = r1;
    _278.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _278;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    float3 _299 = (r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r3.xyz;
    r0 = float4(_299.x, _299.y, _299.z, r0.w);
    float3 _306 = r2.xyz * r3.xyz;
    r1 = float4(_306.x, _306.y, _306.z, r1.w);
    float3 _317 = (r1.xyz * asfloat(uint3(1084227584u, 1084227584u, 1084227584u))) + r0.xyz;
    r0 = float4(_317.x, _317.y, _317.z, r0.w);
    float3 _326 = r0.xyz * cb2_m[1].z.xxx;
    r0 = float4(_326.x, _326.y, _326.z, r0.w);
    float3 _334 = r0.xyz * asfloat(uint3(1120403456u, 1120403456u, 1120403456u));
    o0 = float4(_334.x, _334.y, _334.z, o0.w);
    float4 _339 = o0;
    _339.w = r0.w;
    o0 = _339;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    frag_main();
}
