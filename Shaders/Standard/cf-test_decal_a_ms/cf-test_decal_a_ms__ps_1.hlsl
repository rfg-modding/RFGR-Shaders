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
    float4 cb2_m[2] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float3 v2;
static float4 v3;
static float4 v4;
static float4 v5;
static float4 v6;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _70 = r0;
    _70.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _70;
    float4 _75 = r0;
    _75.y = rsqrt(r0.x);
    r0 = _75;
    float4 _80 = r0;
    _80.x = sqrt(r0.x);
    r0 = _80;
    float4 _101 = r0;
    _101.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _101;
    float3 _108 = r0.yyy * shader_in[2].xyz;
    r0 = float4(r0.x, _108.x, _108.y, _108.z);
    float3 _113 = -r0.yzw;
    float4 _128 = r1;
    _128.x = mad(_113.z, shader_in[6].xyz.z, mad(_113.y, shader_in[6].xyz.y, _113.x * shader_in[6].xyz.x));
    r1 = _128;
    float4 _136 = r1;
    _136.x = min(r1.x, cb1_m[2].x);
    r1 = _136;
    float4 _145 = r1;
    _145.x = r1.x + (-cb1_m[2].y);
    r1 = _145;
    float4 _151 = r1;
    _151.x = max(r1.x, asfloat(0u));
    r1 = _151;
    float4 _159 = r1;
    _159.x = r1.x * cb1_m[2].z;
    r1 = _159;
    float4 _170 = r1;
    _170.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _170;
    float4 _181 = r1;
    _181.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _181;
    float4 _188 = r0;
    _188.x = r0.x * r1.x;
    r0 = _188;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _209 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _209.x, _209.y, _209.z);
    float4 _218 = r1;
    _218.y = r1.y + r1.y;
    r1 = _218;
    float4 _225 = r2;
    _225.x = r2.w * r2.y;
    r2 = _225;
    float4 _237 = r1;
    _237.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r1 = _237;
    float4 _241 = r1;
    _241.x = r2.x;
    r1 = _241;
    float4 _248 = r1;
    _248.w = (-r1.w) + asfloat(1065353216u);
    r1 = _248;
    float4 _254 = r1;
    _254.w = max(r1.w, asfloat(0u));
    r1 = _254;
    float4 _259 = r1;
    _259.z = sqrt(r1.w);
    r1 = _259;
    float3 _266 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_266.x, _266.y, _266.z, r1.w);
    float3 _278 = (cb2_m[1].x.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float4 _294 = r1;
    _294.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r1 = _294;
    float4 _299 = r1;
    _299.w = rsqrt(r1.w);
    r1 = _299;
    float3 _305 = r1.www * r1.xyz;
    r1 = float4(_305.x, _305.y, _305.z, r1.w);
    float4 _322 = r0;
    _322.y = clamp(mad(r1.xyz.z, r0.yzw.z, mad(r1.xyz.y, r0.yzw.y, r1.xyz.x * r0.yzw.x)), 0.0f, 1.0f);
    r0 = _322;
    float4 _329 = r0;
    _329.x = r0.x * r0.y;
    r0 = _329;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _349 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _349.x, _349.y, _349.z);
    float3 _356 = r0.yzw * r0.xxx;
    r0 = float4(_356.x, _356.y, _356.z, r0.w);
    float3 _369 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_369.x, _369.y, _369.z, r0.w);
    float4 _388 = r1;
    _388.x = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _388;
    float4 _393 = r1;
    _393.x = rsqrt(r1.x);
    r1 = _393;
    float4 _401 = r1;
    _401.x = r1.x * shader_in[3].z;
    r1 = _401;
    float4 _415 = r1;
    _415.x = clamp((r1.x * shader_in[4].x) + shader_in[4].y, 0.0f, 1.0f);
    r1 = _415;
    float4 _430 = r1;
    _430.y = clamp((abs(shader_in[3].w) * shader_in[4].z) + shader_in[4].w, 0.0f, 1.0f);
    r1 = _430;
    float4 _437 = r1;
    _437.y = (-r1.y) + asfloat(1065353216u);
    r1 = _437;
    float4 _444 = r0;
    _444.w = r1.y * r1.x;
    r0 = _444;
    r0 *= shader_in[5];
    float4 _457 = r1;
    _457.x = (-shader_in[6].w) + asfloat(1065353216u);
    r1 = _457;
    float3 _463 = r0.xyz * r1.xxx;
    r0 = float4(_463.x, _463.y, _463.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = v6;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
