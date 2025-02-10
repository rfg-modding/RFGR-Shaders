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
};

static float4 shader_in[7];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _67 = r0;
    _67.x = mad(shader_in[5].xyz.z, shader_in[5].xyz.z, mad(shader_in[5].xyz.y, shader_in[5].xyz.y, shader_in[5].xyz.x * shader_in[5].xyz.x));
    r0 = _67;
    float4 _72 = r0;
    _72.y = rsqrt(r0.x);
    r0 = _72;
    float4 _77 = r0;
    _77.x = sqrt(r0.x);
    r0 = _77;
    float4 _98 = r0;
    _98.x = clamp(((-r0.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _98;
    float3 _105 = r0.yyy * shader_in[5].xyz;
    r0 = float4(r0.x, _105.x, _105.y, _105.z);
    float3 _110 = -r0.yzw;
    float4 _125 = r1;
    _125.x = mad(_110.z, shader_in[4].xyz.z, mad(_110.y, shader_in[4].xyz.y, _110.x * shader_in[4].xyz.x));
    r1 = _125;
    float4 _134 = r1;
    _134.x = min(r1.x, cb1_m[2].x);
    r1 = _134;
    float4 _143 = r1;
    _143.x = r1.x + (-cb1_m[2].y);
    r1 = _143;
    float4 _149 = r1;
    _149.x = max(r1.x, asfloat(0u));
    r1 = _149;
    float4 _158 = r1;
    _158.x = r1.x * cb1_m[2].z;
    r1 = _158;
    float4 _169 = r1;
    _169.y = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _169;
    float4 _180 = r1;
    _180.x = (asuint(r1.y) != 0u) ? r1.x : asfloat(1065353216u);
    r1 = _180;
    float4 _187 = r0;
    _187.x = r0.x * r1.x;
    r0 = _187;
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[6].xyxx.xy);
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
    float3 _278 = (cb2_m[2].w.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[6].xyxx.xy);
    float3 _349 = r1.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _349.x, _349.y, _349.z);
    float3 _356 = r0.yzw * r0.xxx;
    r0 = float4(_356.x, _356.y, _356.z, r0.w);
    float3 _369 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_369.x, _369.y, _369.z, r0.w);
    float3 _378 = r0.xyz * shader_in[3].xyz;
    r0 = float4(_378.x, _378.y, _378.z, r0.w);
    float4 _387 = r0;
    _387.w = (-shader_in[5].w) + asfloat(1065353216u);
    r0 = _387;
    float3 _393 = r0.xyz * r0.www;
    r0 = float4(_393.x, _393.y, _393.z, r0.w);
    float4 _399 = r0;
    _399.w = shader_in[4].w;
    r0 = _399;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, shader_in[6].z, shader_in[6].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    frag_main();
}
