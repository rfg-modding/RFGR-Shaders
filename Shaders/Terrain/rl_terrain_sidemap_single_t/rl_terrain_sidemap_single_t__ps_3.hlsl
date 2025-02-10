cbuffer cb0_t : register(b0)
{
    float4 cb0_m[8] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt9s9;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;
static float3 v5;
static float4 v6;
static float4 v7;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float4 v7 : TEXCOORD7;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[8];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float4 _79 = r0;
    _79.x = mad(shader_in[5].xyz.z, shader_in[5].xyz.z, mad(shader_in[5].xyz.y, shader_in[5].xyz.y, shader_in[5].xyz.x * shader_in[5].xyz.x));
    r0 = _79;
    float4 _84 = r0;
    _84.x = sqrt(r0.x);
    r0 = _84;
    float4 _91 = r0;
    _91.x = r0.x + asfloat(3281059840u);
    r0 = _91;
    float4 _101 = r0;
    _101.x = clamp(r0.x * asfloat(1023969417u), 0.0f, 1.0f);
    r0 = _101;
    float4 _108 = r0;
    _108.y = r0.x + r0.x;
    r0 = _108;
    r1 = tex2Dbias(SPIRV_Cross_Combinedt0s0, float4(shader_in[1].xyxx.xy, 0.0, r0.y));
    float3 _133 = (r1.xwy * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_133.x, _133.y, r1.z, _133.z);
    float4 _141 = r1;
    _141.x = r1.y * r1.x;
    r1 = _141;
    float4 _152 = r0;
    _152.z = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r0 = _152;
    float4 _163 = r0;
    _163.z = ((-r1.w) * r1.w) + r0.z;
    r0 = _163;
    float4 _170 = r0;
    _170.z = max(r0.z, asfloat(0u));
    r0 = _170;
    float4 _175 = r1;
    _175.z = sqrt(r0.z);
    r1 = _175;
    r2 = tex2Dbias(SPIRV_Cross_Combinedt0s0, float4(shader_in[7].xyxx.xy, 0.0, r0.y));
    float3 _194 = (r2.xwy * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_194.x, _194.y, r2.z, _194.z);
    float4 _202 = r2;
    _202.x = r2.y * r2.x;
    r2 = _202;
    float4 _212 = r0;
    _212.z = ((-r2.x) * r2.x) + asfloat(1065353216u);
    r0 = _212;
    float4 _223 = r0;
    _223.z = ((-r2.w) * r2.w) + r0.z;
    r0 = _223;
    float4 _229 = r0;
    _229.z = max(r0.z, asfloat(0u));
    r0 = _229;
    float4 _234 = r2;
    _234.z = sqrt(r0.z);
    r2 = _234;
    float3 _241 = r1.xwz + (-r2.xwz);
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float4 _254 = r0;
    _254.z = abs(shader_in[4].z) + abs(shader_in[4].x);
    r0 = _254;
    float4 _263 = r0;
    _263.z = abs(shader_in[4].x) / r0.z;
    r0 = _263;
    float4 _270 = r0;
    _270.z = r0.z + asfloat(3202770534u);
    r0 = _270;
    float4 _278 = r0;
    _278.z = clamp(r0.z * asfloat(1092616192u), 0.0f, 1.0f);
    r0 = _278;
    float3 _287 = (r0.zzz * r1.xyz) + r2.xwz;
    r1 = float4(_287.x, _287.y, _287.z, r1.w);
    float3 _295 = (-r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r2 = float4(_295.x, _295.y, _295.z, r2.w);
    float3 _305 = (r0.xxx * r2.xyz) + r1.xyz;
    r1 = float4(_305.x, _305.y, _305.z, r1.w);
    float4 _324 = r0;
    _324.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _324;
    float4 _329 = r0;
    _329.w = rsqrt(r0.w);
    r0 = _329;
    float3 _336 = r0.www * shader_in[3].xyz;
    r2 = float4(_336.x, _336.y, _336.z, r2.w);
    float4 _355 = r0;
    _355.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _355;
    float4 _360 = r0;
    _360.w = rsqrt(r0.w);
    r0 = _360;
    float3 _370 = (shader_in[2].xyz * r0.www) + r2.xyz;
    r3 = float4(_370.x, _370.y, _370.z, r3.w);
    float3 _376 = -r2.xyz;
    float4 _388 = r1;
    _388.w = mad(_376.z, r1.xyz.z, mad(_376.y, r1.xyz.y, _376.x * r1.xyz.x));
    r1 = _388;
    float4 _394 = r1;
    _394.w = r1.w + asfloat(1065353216u);
    r1 = _394;
    float4 _399 = r1;
    _399.w = log2(r1.w);
    r1 = _399;
    float4 _406 = r1;
    _406.w = r1.w * asfloat(1083179008u);
    r1 = _406;
    float4 _411 = r1;
    _411.w = exp2(r1.w);
    r1 = _411;
    float4 _417 = r1;
    _417.w = min(r1.w, asfloat(1065353216u));
    r1 = _417;
    float3 _424 = r0.www * shader_in[2].xyz;
    r2 = float4(_424.x, _424.y, _424.z, r2.w);
    float4 _441 = r0;
    _441.w = clamp(mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r0 = _441;
    float4 _456 = r2;
    _456.x = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r2 = _456;
    float4 _461 = r2;
    _461.x = rsqrt(r2.x);
    r2 = _461;
    float3 _467 = r2.xxx * r3.xyz;
    r2 = float4(_467.x, _467.y, _467.z, r2.w);
    float4 _484 = r2;
    _484.x = clamp(mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x)), 0.0f, 1.0f);
    r2 = _484;
    float4 _501 = r1;
    _501.x = mad(r1.xyz.z, shader_in[6].xyz.z, mad(r1.xyz.y, shader_in[6].xyz.y, r1.xyz.x * shader_in[6].xyz.x));
    r1 = _501;
    float4 _511 = r1;
    _511.x = clamp((r1.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r1 = _511;
    float4 _518 = r1;
    _518.y = r2.x + asfloat(925353388u);
    r1 = _518;
    r2 = tex2Dbias(SPIRV_Cross_Combinedt1s1, float4(shader_in[1].xyxx.xy, 0.0, r0.y));
    r3 = tex2Dbias(SPIRV_Cross_Combinedt1s1, float4(shader_in[7].xyxx.xy, 0.0, r0.y));
    r2 += (-r3);
    r2 = (r0.zzzz * r2) + r3;
    float4 _559 = r0;
    _559.y = (r0.x * (-r2.w)) + r2.w;
    r0 = _559;
    float3 _576 = r2.xyz * float3(cb2_m[8].x, cb2_m[8].y, cb2_m[8].z);
    r2 = float4(_576.x, _576.y, _576.z, r2.w);
    float4 _584 = r0;
    _584.y = (-r0.y) + asfloat(1065353216u);
    r0 = _584;
    float4 _591 = r0;
    _591.y = r0.y * r1.y;
    r0 = _591;
    r3 = tex2D(SPIRV_Cross_Combinedt9s9, shader_in[7].zwzz.xy);
    float3 _605 = r3.xyz * r3.xyz;
    r4 = float4(_605.x, _605.y, _605.z, r4.w);
    float3 _617 = (r3.xyz * r4.xyz) + (-r2.xyz);
    r3 = float4(_617.x, _617.y, _617.z, r3.w);
    float3 _627 = (r0.xxx * r3.xyz) + r2.xyz;
    r2 = float4(_627.x, _627.y, _627.z, r2.w);
    float3 _634 = r0.yyy * r2.xyz;
    r0 = float4(_634.x, _634.y, _634.z, r0.w);
    float3 _641 = r1.www * r0.xyz;
    r0 = float4(_641.x, _641.y, _641.z, r0.w);
    float3 _649 = r0.xyz * asfloat(uint3(1148846080u, 1148846080u, 1148846080u));
    r0 = float4(_649.x, _649.y, _649.z, r0.w);
    float3 _659 = (r2.xyz * r0.www) + r0.xyz;
    r0 = float4(_659.x, _659.y, _659.z, r0.w);
    float3 _672 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_672.x, _672.y, _672.z, r0.w);
    float2 _685 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(r1.x, _685.x, _685.y, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r1.yzyy.xy);
    float3 _699 = r0.xyz * r3.yyy;
    r0 = float4(_699.x, _699.y, _699.z, r0.w);
    float4 _708 = r0;
    _708.w = (r1.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r0 = _708;
    float4 _717 = r0;
    _717.w = abs(r0.w) + abs(r0.w);
    r0 = _717;
    float4 _727 = r0;
    _727.w = ((-r0.w) * r0.w) + asfloat(1065353216u);
    r0 = _727;
    float4 _733 = r0;
    _733.w = max(r0.w, asfloat(0u));
    r0 = _733;
    float4 _741 = r0;
    _741.w = r0.w * cb0_m[7].y;
    r0 = _741;
    float3 _765 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _765.x, _765.y, _765.z);
    float3 _781 = (r1.xxx * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(_781.x, _781.y, _781.z, r1.w);
    float3 _795 = (-r1.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(_795.x, _795.y, _795.z, r3.w);
    float3 _805 = (r0.www * r3.xyz) + r1.xyz;
    r1 = float4(_805.x, _805.y, _805.z, r1.w);
    float3 _815 = (r1.xyz * r2.xyz) + r0.xyz;
    r0 = float4(_815.x, _815.y, _815.z, r0.w);
    float4 _824 = r0;
    _824.w = (-shader_in[6].w) + asfloat(1065353216u);
    r0 = _824;
    float3 _830 = r0.xyz * r0.www;
    r0 = float4(_830.x, _830.y, _830.z, r0.w);
    float3 _847 = (shader_in[6].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_847.x, _847.y, _847.z, r0.w);
    float4 _853 = r0;
    _853.w = shader_in[4].w;
    r0 = _853;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    shader_in[6] = v6;
    shader_in[7] = v7;
    float4 _891 = gl_FragCoord;
    _891.w = 1.0f / _891.w;
    shader_in[0] = float4(_891.xy.x, _891.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    frag_main();
}
