cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[3] : packoffset(c0);
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

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _80 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _80.x, _80.y, _80.z);
    float4 _89 = r0;
    _89.y = r0.y + r0.y;
    r0 = _89;
    float4 _96 = r1;
    _96.x = r1.w * r1.y;
    r1 = _96;
    float4 _108 = r0;
    _108.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _108;
    float4 _112 = r0;
    _112.x = r1.x;
    r0 = _112;
    float4 _120 = r0;
    _120.w = (-r0.w) + asfloat(1065353216u);
    r0 = _120;
    float4 _127 = r0;
    _127.w = max(r0.w, asfloat(0u));
    r0 = _127;
    float4 _132 = r0;
    _132.z = sqrt(r0.w);
    r0 = _132;
    float3 _139 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_139.x, _139.y, _139.z, r0.w);
    float3 _156 = (cb2_m[5].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_156.x, _156.y, _156.z, r0.w);
    float4 _172 = r0;
    _172.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _172;
    float4 _177 = r0;
    _177.w = rsqrt(r0.w);
    r0 = _177;
    float3 _183 = r0.www * r0.xyz;
    r0 = float4(_183.x, _183.y, _183.z, r0.w);
    float4 _202 = r0;
    _202.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _202;
    float4 _207 = r0;
    _207.w = rsqrt(r0.w);
    r0 = _207;
    float3 _214 = r0.www * shader_in[3].xyz;
    r1 = float4(_214.x, _214.y, _214.z, r1.w);
    float4 _230 = r1;
    _230.x = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    r1 = _230;
    float4 _236 = r1;
    _236.x = max(r1.x, asfloat(0u));
    r1 = _236;
    float4 _243 = r1;
    _243.x = (-r1.x) + asfloat(1065353216u);
    r1 = _243;
    float4 _248 = r1;
    _248.x = log2(r1.x);
    r1 = _248;
    float4 _255 = r1;
    _255.x = r1.x * asfloat(1060320051u);
    r1 = _255;
    float4 _260 = r1;
    _260.x = exp2(r1.x);
    r1 = _260;
    float4 _278 = r1;
    _278.y = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _278;
    float4 _283 = r1;
    _283.z = rsqrt(r1.y);
    r1 = _283;
    float4 _288 = r1;
    _288.y = sqrt(r1.y);
    r1 = _288;
    float4 _304 = r1;
    _304.y = clamp(((-r1.y) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _304;
    float3 _311 = r1.zzz * shader_in[2].xyz;
    r2 = float4(_311.x, _311.y, _311.z, r2.w);
    float4 _328 = r1;
    _328.z = mad(r2.xyz.z, r0.xyz.z, mad(r2.xyz.y, r0.xyz.y, r2.xyz.x * r0.xyz.x));
    r1 = _328;
    float4 _334 = r1;
    _334.z = max(r1.z, asfloat(0u));
    r1 = _334;
    float4 _343 = r1;
    _343.w = (r1.z * asfloat(1070945901u)) + asfloat(3212836864u);
    r1 = _343;
    float4 _352 = r3;
    _352.y = (-abs(r1.w)) + asfloat(1065353216u);
    r3 = _352;
    float4 _358 = r1;
    _358.w = max(r3.y, asfloat(0u));
    r1 = _358;
    float4 _365 = r1;
    _365.x = r1.x * r1.w;
    r1 = _365;
    float4 _372 = r1;
    _372.x = max(r1.x, asfloat(897988541u));
    r1 = _372;
    float4 _377 = r1;
    _377.x = log2(r1.x);
    r1 = _377;
    float4 _383 = r1;
    _383.x = r1.x * asfloat(1060320051u);
    r1 = _383;
    float4 _388 = r3;
    _388.z = exp2(r1.x);
    r3 = _388;
    float4 _394 = r3;
    _394.x = r1.z * asfloat(1070945901u);
    r3 = _394;
    float3 _400 = clamp(r3.xyz, 0.0f.xxx, 1.0f.xxx);
    r3 = float4(_400.x, _400.y, _400.z, r3.w);
    float3 _407 = r3.xyz * r3.xyz;
    r3 = float4(_407.x, _407.y, _407.z, r3.w);
    float3 _412 = -r2.xyz;
    float4 _426 = r1;
    _426.x = mad(_412.z, shader_in[4].xyz.z, mad(_412.y, shader_in[4].xyz.y, _412.x * shader_in[4].xyz.x));
    r1 = _426;
    float3 _436 = (shader_in[3].xyz * r0.www) + r2.xyz;
    r2 = float4(_436.x, _436.y, _436.z, r2.w);
    float4 _445 = r0;
    _445.w = min(r1.x, cb1_m[2].x);
    r0 = _445;
    float4 _454 = r0;
    _454.w = r0.w + (-cb1_m[2].y);
    r0 = _454;
    float4 _460 = r0;
    _460.w = max(r0.w, asfloat(0u));
    r0 = _460;
    float4 _468 = r0;
    _468.w = r0.w * cb1_m[2].z;
    r0 = _468;
    float4 _479 = r1;
    _479.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _479;
    float4 _489 = r0;
    _489.w = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _489;
    float4 _496 = r0;
    _496.w = r0.w * r1.y;
    r0 = _496;
    float3 _502 = r0.www * r3.xyz;
    r1 = float4(_502.x, _502.y, r1.z, _502.z);
    float3 _515 = r1.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_515.x, _515.y, _515.z, r3.w);
    float3 _528 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r4 = float4(_528.x, _528.y, _528.z, r4.w);
    float3 _546 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r5 = float4(_546.x, _546.y, _546.z, r5.w);
    float3 _557 = (r3.xyz * r5.xyz) + r4.xyz;
    r3 = float4(_557.x, _557.y, _557.z, r3.w);
    float3 _570 = r1.www * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r4 = float4(_570.x, _570.y, _570.z, r4.w);
    float3 _586 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r1.www) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_586.x, _586.y, r1.z, _586.z);
    float3 _596 = (r3.xyz * r1.xyw) + r4.xyz;
    r1 = float4(_596.x, _596.y, r1.z, _596.z);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _617 = r3.xyz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r4 = float4(_617.x, _617.y, _617.z, r4.w);
    float3 _624 = r1.xyw * r4.xyz;
    r1 = float4(_624.x, _624.y, r1.z, _624.z);
    float3 _631 = r0.www * r4.xyz;
    r4 = float4(_631.x, _631.y, _631.z, r4.w);
    float3 _642 = (r4.xyz * r1.zzz) + (-r1.xyw);
    r4 = float4(_642.x, _642.y, _642.z, r4.w);
    float4 _650 = r1;
    _650.z = (-r1.z) + asfloat(1065353216u);
    r1 = _650;
    float4 _662 = r1;
    _662.z = ((-r1.z) * cb2_m[6].x) + asfloat(1065353216u);
    r1 = _662;
    r5 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _682 = r5.xyz * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r5 = float4(_682.x, _682.y, _682.z, r5.w);
    float3 _692 = (r5.xxx * r4.xyz) + r1.xyw;
    r1 = float4(_692.x, _692.y, r1.z, _692.z);
    float4 _708 = r2;
    _708.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r2 = _708;
    float4 _713 = r2;
    _713.w = rsqrt(r2.w);
    r2 = _713;
    float3 _719 = r2.www * r2.xyz;
    r2 = float4(_719.x, _719.y, _719.z, r2.w);
    float4 _735 = r0;
    _735.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _735;
    float4 _741 = r0;
    _741.x = max(r0.x, asfloat(0u));
    r0 = _741;
    float4 _746 = r0;
    _746.x = log2(r0.x);
    r0 = _746;
    float4 _754 = r0;
    _754.x = r0.x * cb2_m[6].y;
    r0 = _754;
    float4 _759 = r0;
    _759.x = exp2(r0.x);
    r0 = _759;
    float4 _767 = r0;
    _767.x = r0.x * cb2_m[5].w;
    r0 = _767;
    float3 _773 = r0.xxx * r5.xyz;
    r0 = float4(_773.x, _773.y, _773.z, r0.w);
    float3 _780 = r1.zzz * r0.xyz;
    r0 = float4(_780.x, _780.y, _780.z, r0.w);
    float3 _790 = (r0.xyz * r0.www) + r1.xyw;
    r0 = float4(_790.x, _790.y, _790.z, r0.w);
    float3 _803 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_803.x, _803.y, _803.z, r0.w);
    float2 _815 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r1 = float4(_815.x, _815.y, r1.z, r1.w);
    r1 = tex2D(SPIRV_Cross_Combinedt15s15, r1.xyxx.xy);
    float3 _829 = r0.xyz * r1.yyy;
    r0 = float4(_829.x, _829.y, _829.z, r0.w);
    float4 _838 = r0;
    _838.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _838;
    float3 _844 = r0.xyz * r0.www;
    r3 = float4(_844.x, _844.y, _844.z, r3.w);
    o0 = r3 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _875 = gl_FragCoord;
    _875.w = 1.0f / _875.w;
    shader_in[0] = float4(_875.xy.x, _875.xy.y, shader_in[0].z, shader_in[0].w);
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
