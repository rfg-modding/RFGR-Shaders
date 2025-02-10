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
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;
static float4 r6;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _79 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _79.x, _79.y, _79.z);
    float4 _88 = r0;
    _88.y = r0.y + r0.y;
    r0 = _88;
    float4 _95 = r1;
    _95.x = r1.w * r1.y;
    r1 = _95;
    float4 _107 = r0;
    _107.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _107;
    float4 _111 = r0;
    _111.x = r1.x;
    r0 = _111;
    float4 _119 = r0;
    _119.w = (-r0.w) + asfloat(1065353216u);
    r0 = _119;
    float4 _126 = r0;
    _126.w = max(r0.w, asfloat(0u));
    r0 = _126;
    float4 _131 = r0;
    _131.z = sqrt(r0.w);
    r0 = _131;
    float3 _138 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_138.x, _138.y, _138.z, r0.w);
    float3 _155 = (cb2_m[5].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_155.x, _155.y, _155.z, r0.w);
    float4 _171 = r0;
    _171.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _171;
    float4 _176 = r0;
    _176.w = rsqrt(r0.w);
    r0 = _176;
    float3 _182 = r0.www * r0.xyz;
    r0 = float4(_182.x, _182.y, _182.z, r0.w);
    float4 _201 = r0;
    _201.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _201;
    float4 _206 = r0;
    _206.w = rsqrt(r0.w);
    r0 = _206;
    float3 _213 = r0.www * shader_in[3].xyz;
    r1 = float4(_213.x, _213.y, _213.z, r1.w);
    float4 _229 = r1;
    _229.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _229;
    float4 _235 = r1;
    _235.x = max(r1.x, asfloat(0u));
    r1 = _235;
    float4 _242 = r1;
    _242.x = (-r1.x) + asfloat(1065353216u);
    r1 = _242;
    float4 _247 = r1;
    _247.x = log2(r1.x);
    r1 = _247;
    float4 _254 = r1;
    _254.x = r1.x * asfloat(1060320051u);
    r1 = _254;
    float4 _259 = r1;
    _259.x = exp2(r1.x);
    r1 = _259;
    float4 _277 = r1;
    _277.y = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _277;
    float4 _282 = r1;
    _282.y = rsqrt(r1.y);
    r1 = _282;
    float3 _289 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _289.x, _289.y, _289.z);
    float4 _306 = r2;
    _306.x = mad(r1.yzw.z, r0.xyz.z, mad(r1.yzw.y, r0.xyz.y, r1.yzw.x * r0.xyz.x));
    r2 = _306;
    float3 _316 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r1 = float4(r1.x, _316.x, _316.y, _316.z);
    float4 _323 = r0;
    _323.w = max(r2.x, asfloat(0u));
    r0 = _323;
    float4 _332 = r2;
    _332.x = (r0.w * asfloat(1070945901u)) + asfloat(3212836864u);
    r2 = _332;
    float4 _340 = r2;
    _340.y = (-abs(r2.x)) + asfloat(1065353216u);
    r2 = _340;
    float4 _346 = r2;
    _346.w = max(r2.y, asfloat(0u));
    r2 = _346;
    float4 _353 = r1;
    _353.x = r1.x * r2.w;
    r1 = _353;
    float4 _360 = r1;
    _360.x = max(r1.x, asfloat(897988541u));
    r1 = _360;
    float4 _365 = r1;
    _365.x = log2(r1.x);
    r1 = _365;
    float4 _371 = r1;
    _371.x = r1.x * asfloat(1060320051u);
    r1 = _371;
    float4 _376 = r2;
    _376.z = exp2(r1.x);
    r2 = _376;
    float4 _382 = r2;
    _382.x = r0.w * asfloat(1070945901u);
    r2 = _382;
    float3 _390 = clamp(r2.xyz, 0.0f.xxx, 1.0f.xxx);
    r2 = float4(_390.x, _390.y, _390.z, r2.w);
    float3 _397 = r2.xyz * r2.xyz;
    r2 = float4(_397.x, _397.y, _397.z, r2.w);
    float3 _410 = r2.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_410.x, _410.y, _410.z, r3.w);
    float3 _424 = r2.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_424.x, _424.y, _424.z, r4.w);
    float3 _442 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r2.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r2 = float4(_442.x, _442.y, r2.z, _442.z);
    float3 _452 = (r3.xyz * r2.xyw) + r4.xyz;
    r2 = float4(_452.x, _452.y, r2.z, _452.z);
    float3 _465 = r2.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r3 = float4(_465.x, _465.y, _465.z, r3.w);
    float3 _481 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r2.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r4 = float4(_481.x, _481.y, _481.z, r4.w);
    float3 _491 = (r2.xyw * r4.xyz) + r3.xyz;
    r2 = float4(_491.x, _491.y, _491.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _512 = r3.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r4 = float4(_512.x, _512.y, _512.z, r4.w);
    float3 _519 = r2.xyz * r4.xyz;
    r2 = float4(_519.x, _519.y, _519.z, r2.w);
    float3 _530 = (r4.xyz * r0.www) + (-r2.xyz);
    r5 = float4(_530.x, _530.y, _530.z, r5.w);
    r6 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _554 = r6.xyz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r6 = float4(_554.x, _554.y, _554.z, r6.w);
    float3 _564 = (r6.xxx * r5.xyz) + r2.xyz;
    r2 = float4(_564.x, _564.y, _564.z, r2.w);
    float4 _580 = r1;
    _580.x = mad(r1.yzw.z, r1.yzw.z, mad(r1.yzw.y, r1.yzw.y, r1.yzw.x * r1.yzw.x));
    r1 = _580;
    float4 _585 = r1;
    _585.x = rsqrt(r1.x);
    r1 = _585;
    float3 _591 = r1.xxx * r1.yzw;
    r1 = float4(_591.x, _591.y, _591.z, r1.w);
    float4 _607 = r1;
    _607.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _607;
    float4 _623 = r0;
    _623.x = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _623;
    float4 _633 = r0;
    _633.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _633;
    float4 _639 = r0;
    _639.y = max(r1.x, asfloat(0u));
    r0 = _639;
    float4 _644 = r0;
    _644.y = log2(r0.y);
    r0 = _644;
    float4 _653 = r0;
    _653.y = r0.y * cb2_m[6].y;
    r0 = _653;
    float4 _658 = r0;
    _658.y = exp2(r0.y);
    r0 = _658;
    float4 _667 = r0;
    _667.y = r0.y * cb2_m[5].w;
    r0 = _667;
    float3 _673 = r0.yyy * r6.xyz;
    r1 = float4(_673.x, _673.y, _673.z, r1.w);
    float4 _681 = r0;
    _681.y = (-r0.w) + asfloat(1065353216u);
    r0 = _681;
    float4 _692 = r0;
    _692.y = ((-r0.y) * cb2_m[6].x) + asfloat(1065353216u);
    r0 = _692;
    float3 _701 = (r1.xyz * r0.yyy) + r2.xyz;
    r1 = float4(_701.x, _701.y, _701.z, r1.w);
    float3 _714 = r1.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r1 = float4(_714.x, _714.y, _714.z, r1.w);
    float2 _726 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(r0.x, _726.x, _726.y, r0.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r0.yzyy.xy);
    float3 _740 = r1.xyz * r2.yyy;
    r1 = float4(_740.x, _740.y, _740.z, r1.w);
    float4 _748 = r0;
    _748.y = min(r0.w, r2.y);
    r0 = _748;
    float3 _767 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_767.x, _767.y, _767.z, r2.w);
    float3 _783 = (r0.xxx * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r0 = float4(_783.x, r0.y, _783.y, _783.z);
    float3 _794 = ((-r0.xzw) * r0.yyy) + r0.xzw;
    r0 = float4(_794.x, _794.y, _794.z, r0.w);
    float3 _804 = (r0.xyz * r4.xyz) + r1.xyz;
    r0 = float4(_804.x, _804.y, _804.z, r0.w);
    float4 _813 = r0;
    _813.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _813;
    float3 _819 = r0.xyz * r0.www;
    r0 = float4(_819.x, _819.y, _819.z, r0.w);
    float3 _836 = (shader_in[4].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r3 = float4(_836.x, _836.y, _836.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _867 = gl_FragCoord;
    _867.w = 1.0f / _867.w;
    shader_in[0] = float4(_867.xy.x, _867.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
