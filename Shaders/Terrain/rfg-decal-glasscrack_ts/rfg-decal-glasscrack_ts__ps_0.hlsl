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
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v3;
static float4 v4;
static float4 v5;
static float2 v6;

struct SPIRV_Cross_Input
{
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float2 v6 : TEXCOORD6;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[6].xyxx.xy);
    float3 _78 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _78.x, _78.y, _78.z);
    float4 _87 = r0;
    _87.y = r0.y + r0.y;
    r0 = _87;
    float4 _94 = r1;
    _94.x = r1.w * r1.y;
    r1 = _94;
    float4 _106 = r0;
    _106.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _106;
    float4 _110 = r0;
    _110.x = r1.x;
    r0 = _110;
    float4 _118 = r0;
    _118.w = (-r0.w) + asfloat(1065353216u);
    r0 = _118;
    float4 _125 = r0;
    _125.w = max(r0.w, asfloat(0u));
    r0 = _125;
    float4 _130 = r0;
    _130.z = sqrt(r0.w);
    r0 = _130;
    float3 _137 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_137.x, _137.y, _137.z, r0.w);
    float3 _153 = (cb2_m[2].w.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_153.x, _153.y, _153.z, r0.w);
    float4 _169 = r0;
    _169.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _169;
    float4 _174 = r0;
    _174.w = rsqrt(r0.w);
    r0 = _174;
    float3 _180 = r0.www * r0.xyz;
    r0 = float4(_180.x, _180.y, _180.z, r0.w);
    float4 _198 = r0;
    _198.w = mad(r0.xyz.z, shader_in[4].xyz.z, mad(r0.xyz.y, shader_in[4].xyz.y, r0.xyz.x * shader_in[4].xyz.x));
    r0 = _198;
    float4 _207 = r1;
    _207.x = abs(r0.w) + abs(r0.w);
    r1 = _207;
    float4 _219 = r0;
    _219.w = clamp((r0.w * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _219;
    float4 _229 = r1;
    _229.x = ((-r1.x) * r1.x) + asfloat(1065353216u);
    r1 = _229;
    float4 _235 = r1;
    _235.x = max(r1.x, asfloat(0u));
    r1 = _235;
    float4 _244 = r1;
    _244.x = r1.x * cb0_m[7].y;
    r1 = _244;
    float3 _265 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r1 = float4(r1.x, _265.x, _265.y, _265.z);
    float3 _281 = (r0.www * r1.yzw) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r1 = float4(r1.x, _281.x, _281.y, _281.z);
    float3 _300 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r1.yzw);
    r2 = float4(_300.x, _300.y, _300.z, r2.w);
    float3 _311 = (r1.xxx * r2.xyz) + r1.yzw;
    r1 = float4(_311.x, _311.y, _311.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].xyxx.xy);
    float3 _332 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_332.x, _332.y, _332.z, r2.w);
    float3 _339 = r1.xyz * r2.xyz;
    r1 = float4(_339.x, _339.y, _339.z, r1.w);
    float2 _351 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r3 = float4(_351.x, _351.y, r3.z, r3.w);
    r3 = tex2D(SPIRV_Cross_Combinedt15s15, r3.xyxx.xy);
    float3 _366 = r1.xyz * r3.xxx;
    r1 = float4(_366.x, _366.y, _366.z, r1.w);
    float4 _385 = r0;
    _385.w = mad(shader_in[5].xyz.z, shader_in[5].xyz.z, mad(shader_in[5].xyz.y, shader_in[5].xyz.y, shader_in[5].xyz.x * shader_in[5].xyz.x));
    r0 = _385;
    float4 _390 = r0;
    _390.w = rsqrt(r0.w);
    r0 = _390;
    float3 _397 = r0.www * shader_in[5].xyz;
    r3 = float4(_397.x, r3.y, _397.y, _397.z);
    float4 _414 = r0;
    _414.x = clamp(mad(r0.xyz.z, r3.xzw.z, mad(r0.xyz.y, r3.xzw.y, r0.xyz.x * r3.xzw.x)), 0.0f, 1.0f);
    r0 = _414;
    float4 _421 = r0;
    _421.x = r3.y * r0.x;
    r0 = _421;
    float3 _427 = r2.xyz * r0.xxx;
    r0 = float4(_427.x, _427.y, _427.z, r0.w);
    float3 _443 = (r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r1.xyz;
    r0 = float4(_443.x, _443.y, _443.z, r0.w);
    float3 _451 = r0.xyz * shader_in[3].xyz;
    r0 = float4(_451.x, _451.y, _451.z, r0.w);
    float4 _460 = r0;
    _460.w = (-shader_in[5].w) + asfloat(1065353216u);
    r0 = _460;
    float3 _466 = r0.xyz * r0.www;
    r0 = float4(_466.x, _466.y, _466.z, r0.w);
    float3 _483 = (shader_in[5].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r0 = float4(_483.x, _483.y, _483.z, r0.w);
    float4 _489 = r0;
    _489.w = shader_in[4].w;
    r0 = _489;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, shader_in[6].z, shader_in[6].w);
    float4 _517 = gl_FragCoord;
    _517.w = 1.0f / _517.w;
    shader_in[0] = float4(_517.xy.x, _517.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
