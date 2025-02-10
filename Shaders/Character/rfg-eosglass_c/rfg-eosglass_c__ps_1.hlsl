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
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v1;
static float3 v2;
static float4 v4;
static float4 v5;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float2 _64 = shader_in[5].xy * float2(cb2_m[1].x, cb2_m[1].y);
    r0 = float4(_64.x, _64.y, r0.z, r0.w);
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.xyxx.xy);
    float3 _86 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _86.x, _86.y, _86.z);
    float4 _95 = r0;
    _95.y = r0.y + r0.y;
    r0 = _95;
    float4 _102 = r1;
    _102.x = r1.w * r1.y;
    r1 = _102;
    float4 _114 = r0;
    _114.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _114;
    float4 _118 = r0;
    _118.x = r1.x;
    r0 = _118;
    float4 _126 = r0;
    _126.w = (-r0.w) + asfloat(1065353216u);
    r0 = _126;
    float4 _132 = r0;
    _132.w = max(r0.w, asfloat(0u));
    r0 = _132;
    float4 _137 = r0;
    _137.z = sqrt(r0.w);
    r0 = _137;
    float3 _144 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_144.x, _144.y, _144.z, r0.w);
    float3 _157 = (cb2_m[1].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_157.x, _157.y, _157.z, r0.w);
    float4 _173 = r0;
    _173.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _173;
    float4 _178 = r0;
    _178.w = rsqrt(r0.w);
    r0 = _178;
    float3 _184 = r0.www * r0.xyz;
    r0 = float4(_184.x, _184.y, _184.z, r0.w);
    float4 _203 = r0;
    _203.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _203;
    float4 _208 = r1;
    _208.x = rsqrt(r0.w);
    r1 = _208;
    float4 _213 = r0;
    _213.w = sqrt(r0.w);
    r0 = _213;
    float4 _229 = r0;
    _229.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _229;
    float3 _240 = (shader_in[2].xyz * r1.xxx) + shader_in[1].xyz;
    r1 = float4(r1.x, _240.x, _240.y, _240.z);
    float3 _248 = r1.xxx * shader_in[2].xyz;
    r2 = float4(_248.x, _248.y, _248.z, r2.w);
    float4 _265 = r1;
    _265.x = mad(r1.yzw.z, r1.yzw.z, mad(r1.yzw.y, r1.yzw.y, r1.yzw.x * r1.yzw.x));
    r1 = _265;
    float4 _270 = r1;
    _270.x = rsqrt(r1.x);
    r1 = _270;
    float3 _276 = r1.xxx * r1.yzw;
    r1 = float4(_276.x, _276.y, _276.z, r1.w);
    float4 _293 = r1;
    _293.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _293;
    float4 _300 = r1;
    _300.x = r1.x + asfloat(925353388u);
    r1 = _300;
    float4 _305 = r1;
    _305.x = log2(r1.x);
    r1 = _305;
    float4 _313 = r1;
    _313.x = r1.x * cb2_m[2].x;
    r1 = _313;
    float4 _318 = r1;
    _318.x = exp2(r1.x);
    r1 = _318;
    float4 _333 = r1;
    _333.y = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r1 = _333;
    float3 _338 = -shader_in[1].xyz;
    float4 _350 = r0;
    _350.x = mad(_338.z, r0.xyz.z, mad(_338.y, r0.xyz.y, _338.x * r0.xyz.x));
    r0 = _350;
    float4 _356 = r0;
    _356.x = r0.x + asfloat(1065353216u);
    r0 = _356;
    float4 _362 = r0;
    _362.x = log2(abs(r0.x));
    r0 = _362;
    float4 _369 = r0;
    _369.x = r0.x * asfloat(1083179008u);
    r0 = _369;
    float4 _374 = r0;
    _374.x = exp2(r0.x);
    r0 = _374;
    float4 _380 = r0;
    _380.x = r0.x + asfloat(925353388u);
    r0 = _380;
    float4 _386 = r0;
    _386.x = min(r0.x, asfloat(1065353216u));
    r0 = _386;
    float3 _390 = -r2.xyz;
    float4 _404 = r0;
    _404.y = mad(_390.z, shader_in[4].xyz.z, mad(_390.y, shader_in[4].xyz.y, _390.x * shader_in[4].xyz.x));
    r0 = _404;
    float4 _412 = r0;
    _412.y = min(r0.y, cb1_m[2].x);
    r0 = _412;
    float4 _421 = r0;
    _421.y = r0.y + (-cb1_m[2].y);
    r0 = _421;
    float4 _427 = r0;
    _427.y = max(r0.y, asfloat(0u));
    r0 = _427;
    float4 _435 = r0;
    _435.y = r0.y * cb1_m[2].z;
    r0 = _435;
    float4 _445 = r0;
    _445.z = asfloat((asfloat(0u) >= r1.y) ? 4294967295u : 0u);
    r0 = _445;
    float4 _450 = r1;
    _450.y = clamp(r1.y, 0.0f, 1.0f);
    r1 = _450;
    float4 _459 = r0;
    _459.z = (asuint(r0.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _459;
    float4 _466 = r0;
    _466.z = r0.z * r1.x;
    r0 = _466;
    float4 _475 = r1;
    _475.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _475;
    float4 _485 = r0;
    _485.y = (asuint(r1.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _485;
    float4 _492 = r0;
    _492.y = r0.y * r0.w;
    r0 = _492;
    float4 _499 = r0;
    _499.w = max(r0.y, asfloat(1028443341u));
    r0 = _499;
    float4 _506 = r0;
    _506.y = r0.y * r1.y;
    r0 = _506;
    float4 _513 = r0;
    _513.z = r0.w * r0.z;
    r0 = _513;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[5].zwzz.xy);
    float4 _528 = r0;
    _528.w = (-r1.w) + asfloat(1065353216u);
    r0 = _528;
    float3 _534 = r1.www * r1.xyz;
    r1 = float4(_534.x, _534.y, _534.z, r1.w);
    float4 _543 = r0;
    _543.w = r0.w * cb2_m[1].w;
    r0 = _543;
    float4 _550 = r0;
    _550.x = r0.x * r0.w;
    r0 = _550;
    float3 _562 = r0.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_562.x, _562.y, _562.z, r2.w);
    float3 _569 = r0.zzz * r2.xyz;
    r0 = float4(_569.x, r0.y, _569.y, _569.z);
    float3 _579 = (r0.yyy * r1.xyz) + r0.xzw;
    r0 = float4(_579.x, _579.y, _579.z, r0.w);
    float3 _592 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_592.x, _592.y, _592.z, r0.w);
    float4 _601 = r0;
    _601.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _601;
    float3 _607 = r0.xyz * r0.www;
    r0 = float4(_607.x, _607.y, _607.z, r0.w);
    float4 _611 = r0;
    _611.w = asfloat(1065353216u);
    r0 = _611;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
