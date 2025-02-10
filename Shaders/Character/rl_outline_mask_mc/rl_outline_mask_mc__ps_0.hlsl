cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
struct SPIRV_Cross_Input
{
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[1];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void ps_main()
{
    r0 = shader_in[0].xyxy + asfloat(uint4(3204448256u, 3204448256u, 3204448256u, 3204448256u));
    r1 = r0 * float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w);
    float2 _79 = (r0.zw * float2(cb0_m[6].z, cb0_m[6].w)) + float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(_79.x, _79.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy).yzxw;
    r2 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(0u, 1056964608u, 1056964608u, 1056964608u))) + r1.zwzw;
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r2.xyxx.xy).yxzw;
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r2.zwzz.xy).yxzw;
    r4 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(0u, 1065353216u, 0u, 1069547520u))) + r1.zwzw;
    r5 = tex2D(SPIRV_Cross_Combinedt0s0, r4.xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r4.zwzz.xy);
    float4 _155 = r3;
    _155.w = r4.x;
    r3 = _155;
    float4 _159 = r3;
    _159.z = r5.x;
    r3 = _159;
    r4 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1056964608u, 0u, 1056964608u, 1065353216u))) + r1.zwzw;
    r5 = tex2D(SPIRV_Cross_Combinedt0s0, r4.xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r4.zwzz.xy);
    float4 _189 = r2;
    _189.z = r4.x;
    r2 = _189;
    float4 _193 = r2;
    _193.x = r5.x;
    r2 = _193;
    r4 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1056964608u, 1069547520u, 1065353216u, 0u))) + r1.zwzw;
    r5 = tex2D(SPIRV_Cross_Combinedt0s0, r4.xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r4.zwzz.xy);
    float4 _223 = r0;
    _223.x = r4.x;
    r0 = _223;
    float4 _227 = r2;
    _227.w = r5.x;
    r2 = _227;
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float4 _238 = r3;
    _238.x = r4.x;
    r3 = _238;
    r2 = max(r2, r3);
    r3 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1065353216u, 1056964608u, 1065353216u, 1069547520u))) + r1.zwzw;
    r4 = tex2D(SPIRV_Cross_Combinedt0s0, r3.xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r3.zwzz.xy);
    float4 _271 = r0;
    _271.w = r3.x;
    r0 = _271;
    float4 _275 = r0;
    _275.y = r4.x;
    r0 = _275;
    r0 = max(r0, r2);
    r2 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1069547520u, 0u, 1069547520u, 1056964608u))) + r1.zwzw;
    r1 = (float4(cb0_m[6].z, cb0_m[6].w, cb0_m[6].z, cb0_m[6].w) * asfloat(uint4(1069547520u, 1065353216u, 1069547520u, 1069547520u))) + r1;
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, r2.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r2.zwzz.xy);
    float4 _319 = r3;
    _319.y = r2.x;
    r3 = _319;
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r1.xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, r1.zwzz.xy);
    float4 _337 = r3;
    _337.w = r1.x;
    r3 = _337;
    float4 _341 = r3;
    _341.z = r2.x;
    r3 = _341;
    r0 = max(r0, r3);
    float2 _350 = max(r0.zw, r0.xy);
    r0 = float4(_350.x, _350.y, r0.z, r0.w);
    float4 _358 = r0;
    _358.x = max(r0.y, r0.x);
    r0 = _358;
    float4 _365 = r0;
    _365.x = r0.x + asfloat(925353388u);
    r0 = _365;
    float4 _377 = r0;
    _377.x = asfloat((r0.x >= shader_in[0].z) ? 4294967295u : 0u);
    r0 = _377;
    float4 _384 = r0;
    _384.x = asfloat(asuint(r0.x) & 1065353216u);
    r0 = _384;
    float2 _394 = r0.xx * float2(cb2_m[0].z, cb2_m[0].w);
    r0 = float4(_394.x, _394.y, r0.z, r0.w);
    float2 _405 = r0.xy * float2(cb6_m[0].z, cb6_m[0].w);
    o0 = float4(o0.x, o0.y, _405.x, _405.y);
    float2 _420 = float2(cb6_m[0].x, cb6_m[0].y) * float2(cb2_m[0].x, cb2_m[0].y);
    o0 = float4(_420.x, _420.y, o0.z, o0.w);
}

void frag_main()
{
    float4 _426 = gl_FragCoord;
    _426.w = 1.0f / _426.w;
    shader_in[0] = float4(_426.xyz.x, _426.xyz.y, _426.xyz.z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    frag_main();
}
