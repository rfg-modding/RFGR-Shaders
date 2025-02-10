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

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt15s15;

static float4 gl_FragCoord;
static float3 v1;
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
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

void ps_main()
{
    float3 _75 = shader_in[3].xyy * float3(cb2_m[2].z, cb2_m[2].w, cb2_m[2].x);
    r0 = float4(_75.x, _75.y, r0.z, _75.z);
    r1 = tex2D(SPIRV_Cross_Combinedt2s2, r0.xyxx.xy);
    float3 _99 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _99.x, _99.y, _99.z);
    float4 _108 = r1;
    _108.y = r1.y + r1.y;
    r1 = _108;
    float4 _115 = r2;
    _115.x = r2.w * r2.y;
    r2 = _115;
    float4 _127 = r0;
    _127.x = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r0 = _127;
    float4 _131 = r1;
    _131.x = r2.x;
    r1 = _131;
    float4 _139 = r0;
    _139.x = (-r0.x) + asfloat(1065353216u);
    r0 = _139;
    float4 _145 = r0;
    _145.x = max(r0.x, asfloat(0u));
    r0 = _145;
    float4 _150 = r1;
    _150.z = sqrt(r0.x);
    r1 = _150;
    float3 _157 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_157.x, _157.y, _157.z, r1.w);
    float3 _169 = (cb2_m[2].y.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_169.x, _169.y, _169.z, r1.w);
    float4 _185 = r0;
    _185.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _185;
    float4 _190 = r0;
    _190.x = rsqrt(r0.x);
    r0 = _190;
    float3 _196 = r0.xxx * r1.xyz;
    r1 = float4(_196.x, _196.y, _196.z, r1.w);
    float4 _213 = r0;
    _213.x = mad(r1.xyz.z, shader_in[2].xyz.z, mad(r1.xyz.y, shader_in[2].xyz.y, r1.xyz.x * shader_in[2].xyz.x));
    r0 = _213;
    float4 _222 = r0;
    _222.y = abs(r0.x) + abs(r0.x);
    r0 = _222;
    float4 _234 = r0;
    _234.x = clamp((r0.x * asfloat(1056964608u)) + asfloat(1056964608u), 0.0f, 1.0f);
    r0 = _234;
    float4 _244 = r0;
    _244.y = ((-r0.y) * r0.y) + asfloat(1065353216u);
    r0 = _244;
    float4 _250 = r0;
    _250.y = max(r0.y, asfloat(0u));
    r0 = _250;
    float4 _259 = r0;
    _259.y = r0.y * cb0_m[7].y;
    r0 = _259;
    float3 _278 = float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z) + (-float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z));
    r2 = float4(_278.x, _278.y, _278.z, r2.w);
    float3 _294 = (r0.xxx * r2.xyz) + float3(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z);
    r2 = float4(_294.x, _294.y, _294.z, r2.w);
    float3 _313 = (float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z) * cb0_m[7].x.xxx) + (-r2.xyz);
    r3 = float4(_313.x, _313.y, _313.z, r3.w);
    float3 _324 = (r0.yyy * r3.xyz) + r2.xyz;
    r2 = float4(_324.x, _324.y, _324.z, r2.w);
    float3 _333 = (-r2.xyz) + asfloat(uint3(1082130432u, 1082130432u, 1082130432u));
    r3 = float4(_333.x, _333.y, _333.z, r3.w);
    float3 _345 = (cb2_m[3].x.xxx * r3.xyz) + r2.xyz;
    r2 = float4(_345.x, _345.y, _345.z, r2.w);
    float4 _356 = r0;
    _356.z = shader_in[3].x * cb2_m[1].w;
    r0 = _356;
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    float3 _375 = r0.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_375.x, _375.y, _375.z, r3.w);
    r4 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].zwzz.xy);
    float3 _401 = ((-r0.xyz) * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r4.xyz;
    r4 = float4(_401.x, _401.y, _401.z, r4.w);
    float4 _410 = r1;
    _410.w = r4.w * cb2_m[1].x;
    r1 = _410;
    float3 _419 = (r1.www * r4.xyz) + r3.xyz;
    r3 = float4(_419.x, _419.y, _419.z, r3.w);
    float3 _426 = r2.xyz * r3.xyz;
    r2 = float4(_426.x, _426.y, _426.z, r2.w);
    float2 _439 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r4 = float4(_439.x, _439.y, r4.z, r4.w);
    r4 = tex2D(SPIRV_Cross_Combinedt15s15, r4.xyxx.xy);
    float3 _453 = r2.xyz * r4.xxx;
    r2 = float4(_453.x, _453.y, _453.z, r2.w);
    float4 _471 = r1;
    _471.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r1 = _471;
    float4 _476 = r1;
    _476.w = rsqrt(r1.w);
    r1 = _476;
    float3 _483 = r1.www * shader_in[1].xyz;
    r4 = float4(_483.x, r4.y, _483.y, _483.z);
    float4 _500 = r1;
    _500.x = clamp(mad(r1.xyz.z, r4.xzw.z, mad(r1.xyz.y, r4.xzw.y, r1.xyz.x * r4.xzw.x)), 0.0f, 1.0f);
    r1 = _500;
    float4 _507 = r1;
    _507.x = r4.y * r1.x;
    r1 = _507;
    float3 _513 = r3.xyz * r1.xxx;
    r1 = float4(_513.x, _513.y, _513.z, r1.w);
    float3 _529 = (r1.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z)) + r2.xyz;
    r1 = float4(_529.x, _529.y, _529.z, r1.w);
    float4 _538 = r1;
    _538.w = (-shader_in[2].w) + asfloat(1065353216u);
    r1 = _538;
    float3 _544 = r1.xyz * r1.www;
    r1 = float4(_544.x, _544.y, _544.z, r1.w);
    float3 _562 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r0 = float4(_562.x, _562.y, _562.z, r0.w);
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    float4 _587 = gl_FragCoord;
    _587.w = 1.0f / _587.w;
    shader_in[0] = float4(_587.xy.x, _587.xy.y, shader_in[0].z, shader_in[0].w);
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
