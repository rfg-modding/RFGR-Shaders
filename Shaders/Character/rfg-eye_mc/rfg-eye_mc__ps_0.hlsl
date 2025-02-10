cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
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
    float4 cb2_m[7] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;
static float4 r7;
static float4 r8;

void ps_main()
{
    float3 _79 = float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) + (-float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z));
    r0 = float4(_79.x, _79.y, _79.z, r0.w);
    float3 _99 = (cb2_m[5].x.xxx * r0.xyz) + float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r0 = float4(_99.x, _99.y, _99.z, r0.w);
    float4 _117 = r0;
    _117.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _117;
    float4 _123 = r1;
    _123.x = rsqrt(r0.w);
    r1 = _123;
    float4 _128 = r0;
    _128.w = sqrt(r0.w);
    r0 = _128;
    float4 _135 = r0;
    _135.w = r0.w + asfloat(3212836864u);
    r0 = _135;
    float4 _145 = r0;
    _145.w = clamp(r0.w * asfloat(1045220557u), 0.0f, 1.0f);
    r0 = _145;
    float4 _153 = r1;
    _153.y = r1.x * shader_in[2].z;
    r1 = _153;
    float4 _159 = r1;
    _159.y = max(r1.y, asfloat(0u));
    r1 = _159;
    float4 _167 = r1;
    _167.y = (-r1.y) + asfloat(1065353216u);
    r1 = _167;
    float4 _184 = r1;
    _184.z = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _184;
    float4 _189 = r1;
    _189.z = rsqrt(r1.z);
    r1 = _189;
    float3 _196 = r1.zzz * shader_in[3].xyz;
    r2 = float4(_196.x, _196.y, _196.z, r2.w);
    float4 _207 = r1;
    _207.z = (r2.z * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _207;
    float4 _215 = r1;
    _215.y = (-r1.y) + r1.z;
    r1 = _215;
    float4 _221 = r1;
    _221.y = r1.y + asfloat(3212836864u);
    r1 = _221;
    float4 _232 = r1;
    _232.y = clamp(((-r1.y) * asfloat(3207244459u)) + asfloat(1065353216u), 0.0f, 1.0f);
    r1 = _232;
    float4 _237 = r1;
    _237.y = log2(r1.y);
    r1 = _237;
    float4 _244 = r1;
    _244.y = r1.y * asfloat(1074580685u);
    r1 = _244;
    float4 _249 = r1;
    _249.y = exp2(r1.y);
    r1 = _249;
    float3 _261 = r1.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r3 = float4(_261.x, _261.y, _261.z, r3.w);
    float3 _280 = ((-float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_280.x, _280.y, _280.z, r4.w);
    float3 _291 = (r0.xyz * r4.xyz) + r3.xyz;
    r0 = float4(_291.x, _291.y, _291.z, r0.w);
    float4 _297 = r1;
    _297.y = clamp(r2.z, 0.0f, 1.0f);
    r1 = _297;
    float4 _302 = r1;
    _302.y = log2(r1.y);
    r1 = _302;
    float4 _308 = r1;
    _308.y = r1.y * asfloat(1074580685u);
    r1 = _308;
    float4 _313 = r1;
    _313.y = exp2(r1.y);
    r1 = _313;
    float3 _319 = r0.xyz * r1.yyy;
    r3 = float4(_319.x, _319.y, _319.z, r3.w);
    float3 _329 = ((-r0.xyz) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_329.x, _329.y, _329.z, r4.w);
    float3 _346 = (float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z) * r4.xyz) + r3.xyz;
    r3 = float4(_346.x, _346.y, _346.z, r3.w);
    float4 _355 = r1;
    _355.w = r1.z + cb2_m[5].y;
    r1 = _355;
    float4 _362 = r2;
    _362.w = cb2_m[5].y + asfloat(1065353216u);
    r2 = _362;
    float4 _370 = r1;
    _370.w = clamp(r1.w / r2.w, 0.0f, 1.0f);
    r1 = _370;
    float4 _377 = r1;
    _377.w = r1.w * r1.w;
    r1 = _377;
    float3 _386 = ((-r3.xyz) * r1.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_386.x, _386.y, _386.z, r4.w);
    float3 _393 = r1.www * r3.xyz;
    r3 = float4(_393.x, _393.y, _393.z, r3.w);
    r5 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _419 = ((-r5.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r6 = float4(_419.x, _419.y, _419.z, r6.w);
    float3 _430 = ((-r6.xyz) * r4.xyz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_430.x, _430.y, _430.z, r4.w);
    float3 _443 = r5.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r7 = float4(_443.x, _443.y, _443.z, r7.w);
    float3 _451 = r4.xyz * r7.xyz;
    r4 = float4(_451.x, _451.y, _451.z, r4.w);
    float3 _458 = r3.xyz * r7.xyz;
    r8 = float4(_458.x, _458.y, _458.z, r8.w);
    float3 _466 = r0.xyz * r7.xyz;
    r0 = float4(_466.x, _466.y, _466.z, r0.w);
    float3 _476 = (r6.xyz * r8.xyz) + r4.xyz;
    r4 = float4(_476.x, _476.y, _476.z, r4.w);
    float3 _483 = r3.xyz * r4.xyz;
    r3 = float4(_483.x, _483.y, _483.z, r3.w);
    float3 _496 = r3.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r3 = float4(_496.x, _496.y, _496.z, r3.w);
    float2 _510 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r4 = float4(_510.x, _510.y, r4.z, r4.w);
    r4 = tex2D(SPIRV_Cross_Combinedt15s15, r4.xyxx.xy);
    float3 _524 = r3.xyz * r4.yyy;
    r3 = float4(_524.x, _524.y, _524.z, r3.w);
    float4 _532 = r1;
    _532.y = min(r1.y, r4.y);
    r1 = _532;
    float3 _551 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r4 = float4(_551.x, r4.y, _551.y, _551.z);
    float3 _567 = (r1.zzz * r4.xzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r4 = float4(_567.x, r4.y, _567.y, _567.z);
    float3 _578 = ((-r4.xzw) * r1.yyy) + r4.xzw;
    r1 = float4(r1.x, _578.x, _578.y, _578.z);
    float3 _588 = (r1.yzw * r0.xyz) + r3.xyz;
    r0 = float4(_588.x, _588.y, _588.z, r0.w);
    float3 _599 = (shader_in[2].xyz * r1.xxx) + r2.xyz;
    r1 = float4(r1.x, _599.x, _599.y, _599.z);
    float3 _611 = (shader_in[2].xyz * r1.xxx) + (-r2.xyz);
    r2 = float4(_611.x, _611.y, _611.z, r2.w);
    float4 _627 = r1;
    _627.x = mad(r1.yzw.z, r1.yzw.z, mad(r1.yzw.y, r1.yzw.y, r1.yzw.x * r1.yzw.x));
    r1 = _627;
    float4 _632 = r1;
    _632.x = rsqrt(r1.x);
    r1 = _632;
    float4 _639 = r1;
    _639.x = r1.x * r1.w;
    r1 = _639;
    float4 _654 = r1;
    _654.y = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _654;
    float4 _659 = r1;
    _659.y = rsqrt(r1.y);
    r1 = _659;
    float4 _666 = r1;
    _666.y = r1.y * r2.z;
    r1 = _666;
    float4 _674 = r1;
    _674.x = clamp(max(r1.y, r1.x), 0.0f, 1.0f);
    r1 = _674;
    float4 _682 = r1;
    _682.x = (-r1.x) + asfloat(1065302884u);
    r1 = _682;
    float4 _690 = r1;
    _690.x = clamp(r1.x * asfloat(3284664320u), 0.0f, 1.0f);
    r1 = _690;
    float4 _697 = r1;
    _697.x = r1.x * r1.x;
    r1 = _697;
    float4 _705 = r1;
    _705.x = r1.x * cb2_m[5].w;
    r1 = _705;
    float4 _715 = r1;
    _715.y = (r0.w * asfloat(3221225472u)) + asfloat(1077936128u);
    r1 = _715;
    float4 _722 = r0;
    _722.w = r0.w * r0.w;
    r0 = _722;
    float4 _732 = r0;
    _732.w = ((-r1.y) * r0.w) + asfloat(1065353216u);
    r0 = _732;
    float4 _739 = r0;
    _739.w = r0.w * r1.x;
    r0 = _739;
    float4 _746 = r0;
    _746.w = r0.w * asfloat(1033476506u);
    r0 = _746;
    float4 _754 = r1;
    _754.x = cb2_m[6].x + asfloat(925353388u);
    r1 = _754;
    float4 _761 = r1;
    _761.x = r1.x * asfloat(4286578688u);
    r1 = _761;
    float4 _766 = r1;
    _766.x = exp2(r1.x);
    r1 = _766;
    float4 _774 = r1;
    _774.x = r1.x * cb2_m[5].z;
    r1 = _774;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _795 = r2.xyz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r1 = float4(r1.x, _795.x, _795.y, _795.z);
    float3 _802 = r1.xxx * r1.yzw;
    r1 = float4(_802.x, _802.y, _802.z, r1.w);
    float3 _809 = r4.yyy * r1.xyz;
    r1 = float4(_809.x, _809.y, _809.z, r1.w);
    float3 _816 = max(r0.www, r1.xyz);
    r1 = float4(_816.x, _816.y, _816.z, r1.w);
    float3 _832 = (r1.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r0.xyz;
    r0 = float4(_832.x, _832.y, _832.z, r0.w);
    float4 _841 = r0;
    _841.w = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _841;
    float3 _847 = r0.xyz * r0.www;
    r0 = float4(_847.x, _847.y, _847.z, r0.w);
    float3 _864 = (shader_in[3].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r5 = float4(_864.x, _864.y, _864.z, r5.w);
    o0 = r5 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
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
    frag_main();
}
