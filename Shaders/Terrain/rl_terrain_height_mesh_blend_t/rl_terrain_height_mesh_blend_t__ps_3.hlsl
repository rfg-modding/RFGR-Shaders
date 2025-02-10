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
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt5s5;
uniform sampler2D SPIRV_Cross_Combinedt8s8;
uniform sampler2D SPIRV_Cross_Combinedt6s6;
uniform sampler2D SPIRV_Cross_Combinedt7s7;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt9s9;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[4].xyxx.xy);
    float3 _94 = (r0.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _94.x, _94.y, _94.z);
    float4 _102 = r0;
    _102.x = r0.w * r0.z;
    r0 = _102;
    float4 _114 = r0;
    _114.w = mad(r0.xy.y, r0.xy.y, r0.xy.x * r0.xy.x);
    r0 = _114;
    float4 _122 = r0;
    _122.w = (-r0.w) + asfloat(1065353216u);
    r0 = _122;
    float4 _129 = r0;
    _129.w = max(r0.w, asfloat(0u));
    r0 = _129;
    float4 _134 = r0;
    _134.z = sqrt(r0.w);
    r0 = _134;
    r1 = tex2D(SPIRV_Cross_Combinedt5s5, shader_in[5].zwzz.xy);
    float3 _151 = (r1.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _151.x, _151.y, _151.z);
    float4 _159 = r1;
    _159.x = r1.w * r1.z;
    r1 = _159;
    float4 _171 = r0;
    _171.w = mad(r1.xy.y, r1.xy.y, r1.xy.x * r1.xy.x);
    r0 = _171;
    float4 _178 = r0;
    _178.w = (-r0.w) + asfloat(1065353216u);
    r0 = _178;
    float4 _184 = r0;
    _184.w = max(r0.w, asfloat(0u));
    r0 = _184;
    float4 _189 = r1;
    _189.z = sqrt(r0.w);
    r1 = _189;
    r2 = tex2D(SPIRV_Cross_Combinedt8s8, shader_in[5].xyxx.xy);
    float3 _205 = (-r2.zyx) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_205.x, _205.y, _205.z, r3.w);
    float4 _214 = r0;
    _214.w = r3.y * r3.z;
    r0 = _214;
    float4 _221 = r1;
    _221.w = r2.z * r0.w;
    r1 = _221;
    float4 _228 = r0;
    _228.w = r3.x * r0.w;
    r0 = _228;
    float4 _235 = r2;
    _235.y = r2.y * r3.z;
    r2 = _235;
    float3 _241 = r1.www * r1.xyz;
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float3 _251 = (r0.xyz * r0.www) + r1.xyz;
    r0 = float4(_251.x, _251.y, _251.z, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt6s6, shader_in[1].xyxx.xy);
    float3 _268 = (r3.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(r3.x, _268.x, _268.y, _268.z);
    float4 _276 = r3;
    _276.x = r3.w * r3.z;
    r3 = _276;
    float4 _288 = r1;
    _288.x = mad(r3.xy.y, r3.xy.y, r3.xy.x * r3.xy.x);
    r1 = _288;
    float4 _295 = r1;
    _295.x = (-r1.x) + asfloat(1065353216u);
    r1 = _295;
    float4 _301 = r1;
    _301.x = max(r1.x, asfloat(0u));
    r1 = _301;
    float4 _306 = r3;
    _306.z = sqrt(r1.x);
    r3 = _306;
    float3 _315 = (r3.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_315.x, _315.y, _315.z, r0.w);
    r3 = tex2D(SPIRV_Cross_Combinedt7s7, shader_in[4].zwzz.xy);
    float3 _331 = (r3.yxw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r3 = float4(r3.x, _331.x, _331.y, _331.z);
    float4 _339 = r3;
    _339.x = r3.w * r3.z;
    r3 = _339;
    float4 _351 = r1;
    _351.x = mad(r3.xy.y, r3.xy.y, r3.xy.x * r3.xy.x);
    r1 = _351;
    float4 _358 = r1;
    _358.x = (-r1.x) + asfloat(1065353216u);
    r1 = _358;
    float4 _364 = r1;
    _364.x = max(r1.x, asfloat(0u));
    r1 = _364;
    float4 _369 = r3;
    _369.z = sqrt(r1.x);
    r3 = _369;
    float3 _378 = (r3.xyz * r2.xxx) + r0.xyz;
    r0 = float4(_378.x, _378.y, _378.z, r0.w);
    float4 _394 = r1;
    _394.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r1 = _394;
    float4 _399 = r1;
    _399.x = rsqrt(r1.x);
    r1 = _399;
    float3 _405 = r0.xyz * r1.xxx;
    r3 = float4(_405.x, _405.y, _405.z, r3.w);
    float3 _416 = ((-r0.xyz) * r1.xxx) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_416.x, _416.y, _416.z, r0.w);
    float4 _426 = r1;
    _426.x = shader_in[2].w + asfloat(3281059840u);
    r1 = _426;
    float4 _436 = r1;
    _436.x = clamp(r1.x * asfloat(1023969417u), 0.0f, 1.0f);
    r1 = _436;
    float3 _445 = (r1.xxx * r0.xyz) + r3.xyz;
    r0 = float4(_445.x, _445.y, _445.z, r0.w);
    float4 _464 = r1;
    _464.y = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _464;
    float4 _469 = r1;
    _469.y = rsqrt(r1.y);
    r1 = _469;
    float3 _476 = r1.yyy * shader_in[3].xyz;
    r3 = float4(_476.x, _476.y, _476.z, r3.w);
    float4 _493 = r1;
    _493.y = clamp(mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x)), 0.0f, 1.0f);
    r1 = _493;
    float4 _509 = r0;
    _509.x = mad(r0.xyz.z, shader_in[2].xyz.z, mad(r0.xyz.y, shader_in[2].xyz.y, r0.xyz.x * shader_in[2].xyz.x));
    r0 = _509;
    float4 _519 = r0;
    _519.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _519;
    r3 = tex2Dbias(SPIRV_Cross_Combinedt1s1, float4(shader_in[5].zwzz.xy, 0.0, asfloat(1073741824u)));
    float3 _544 = r3.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_544.x, _544.y, _544.z, r3.w);
    float3 _551 = r1.www * r3.xyz;
    r3 = float4(_551.x, _551.y, _551.z, r3.w);
    r4 = tex2Dbias(SPIRV_Cross_Combinedt0s0, float4(shader_in[4].xyxx.xy, 0.0, asfloat(1073741824u)));
    float3 _574 = r4.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r4 = float4(_574.x, _574.y, _574.z, r4.w);
    float3 _584 = (r4.xyz * r0.www) + r3.xyz;
    r0 = float4(r0.x, _584.x, _584.y, _584.z);
    r3 = tex2Dbias(SPIRV_Cross_Combinedt2s2, float4(shader_in[1].xyxx.xy, 0.0, asfloat(1073741824u)));
    float3 _606 = r3.xyz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_606.x, _606.y, _606.z, r3.w);
    float3 _616 = (r3.xyz * r2.yyy) + r0.yzw;
    r0 = float4(r0.x, _616.x, _616.y, _616.z);
    r3 = tex2Dbias(SPIRV_Cross_Combinedt3s3, float4(shader_in[4].zwzz.xy, 0.0, asfloat(1073741824u)));
    float3 _638 = r3.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(r2.x, _638.x, _638.y, _638.z);
    float3 _648 = (r2.yzw * r2.xxx) + r0.yzw;
    r0 = float4(r0.x, _648.x, _648.y, _648.z);
    r2 = tex2D(SPIRV_Cross_Combinedt9s9, shader_in[5].xyxx.xy);
    float3 _663 = r2.xyz * r2.xyz;
    r3 = float4(_663.x, _663.y, _663.z, r3.w);
    float3 _674 = (r2.xyz * r3.xyz) + (-r0.yzw);
    r2 = float4(_674.x, _674.y, _674.z, r2.w);
    float3 _684 = (r1.xxx * r2.xyz) + r0.yzw;
    r0 = float4(r0.x, _684.x, _684.y, _684.z);
    float3 _691 = r1.yyy * r0.yzw;
    r1 = float4(_691.x, _691.y, _691.z, r1.w);
    float3 _704 = r1.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_704.x, _704.y, _704.z, r1.w);
    float2 _718 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_718.x, _718.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float3 _732 = r1.xyz * r2.yyy;
    r1 = float4(_732.x, _732.y, _732.z, r1.w);
    float4 _741 = r1;
    _741.w = (r0.x * asfloat(1073741824u)) + asfloat(3212836864u);
    r1 = _741;
    float4 _750 = r1;
    _750.w = abs(r1.w) + abs(r1.w);
    r1 = _750;
    float4 _760 = r1;
    _760.w = ((-r1.w) * r1.w) + asfloat(1065353216u);
    r1 = _760;
    float4 _766 = r1;
    _766.w = max(r1.w, asfloat(0u));
    r1 = _766;
    float4 _775 = r1;
    _775.w = r1.w * cb0_m[7].y;
    r1 = _775;
    float3 _799 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_799.x, _799.y, _799.z, r2.w);
    float3 _815 = (r0.xxx * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(_815.x, _815.y, _815.z, r2.w);
    float3 _829 = (-r2.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r3 = float4(_829.x, _829.y, _829.z, r3.w);
    float3 _839 = (r1.www * r3.xyz) + r2.xyz;
    r2 = float4(_839.x, _839.y, _839.z, r2.w);
    float3 _849 = (r2.xyz * r0.yzw) + r1.xyz;
    r0 = float4(_849.x, _849.y, _849.z, r0.w);
    float4 _858 = r0;
    _858.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _858;
    float3 _864 = r0.xyz * r0.www;
    r0 = float4(_864.x, _864.y, _864.z, r0.w);
    float3 _881 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_881.x, _881.y, _881.z, r0.w);
    float4 _885 = r0;
    _885.w = asfloat(1065353216u);
    r0 = _885;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    float4 _913 = gl_FragCoord;
    _913.w = 1.0f / _913.w;
    shader_in[0] = float4(_913.xy.x, _913.xy.y, shader_in[0].z, shader_in[0].w);
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
    frag_main();
}
