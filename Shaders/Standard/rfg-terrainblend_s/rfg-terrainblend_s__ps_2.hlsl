cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[4] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

static float3 v1;
static float3 v2;
static float v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;

void ps_main()
{
    float4 _70 = r0;
    _70.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _70;
    float4 _80 = r0;
    _80.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _80;
    float4 _90 = r0;
    _90.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _90;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float4 _115 = r1;
    _115.y = r0.y + r0.y;
    r1 = _115;
    float3 _127 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _127.x, _127.y, _127.z);
    float4 _135 = r0;
    _135.x = r0.w * r0.y;
    r0 = _135;
    float4 _147 = r0;
    _147.y = mad(r0.xz.y, r0.xz.y, r0.xz.x * r0.xz.x);
    r0 = _147;
    float4 _154 = r0;
    _154.y = (-r0.y) + asfloat(1065353216u);
    r0 = _154;
    float4 _160 = r0;
    _160.y = max(r0.y, asfloat(0u));
    r0 = _160;
    float4 _165 = r1;
    _165.z = sqrt(r0.y);
    r1 = _165;
    float4 _169 = r1;
    _169.x = r0.x;
    r1 = _169;
    float3 _176 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_176.x, _176.y, _176.z, r0.w);
    float3 _189 = (cb2_m[2].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_189.x, _189.y, _189.z, r0.w);
    float4 _205 = r0;
    _205.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _205;
    float4 _210 = r0;
    _210.w = rsqrt(r0.w);
    r0 = _210;
    float3 _216 = r0.www * r0.xyz;
    r0 = float4(_216.x, _216.y, _216.z, r0.w);
    r1 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _233 = r2;
    _233.y = r1.y + r1.y;
    r2 = _233;
    float3 _240 = (r1.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _240.x, _240.y, _240.z);
    float4 _248 = r1;
    _248.x = r1.w * r1.y;
    r1 = _248;
    float4 _260 = r0;
    _260.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _260;
    float4 _267 = r0;
    _267.w = (-r0.w) + asfloat(1065353216u);
    r0 = _267;
    float4 _273 = r0;
    _273.w = max(r0.w, asfloat(0u));
    r0 = _273;
    float4 _278 = r2;
    _278.z = sqrt(r0.w);
    r2 = _278;
    float4 _282 = r2;
    _282.x = r1.x;
    r2 = _282;
    float3 _287 = r2.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r1 = float4(_287.x, _287.y, _287.z, r1.w);
    float3 _298 = (cb2_m[2].y.xxx * r1.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r1 = float4(_298.x, _298.y, _298.z, r1.w);
    float4 _314 = r0;
    _314.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _314;
    float4 _319 = r0;
    _319.w = rsqrt(r0.w);
    r0 = _319;
    float3 _325 = r0.www * r1.xyz;
    r2 = float4(_325.x, _325.y, _325.z, r2.w);
    float4 _335 = r1;
    _335.w = clamp(shader_in[3].x, 0.0f, 1.0f);
    r1 = _335;
    float3 _345 = (r1.xyz * r0.www) + (-r0.xyz);
    r1 = float4(_345.x, _345.y, _345.z, r1.w);
    float3 _355 = (r1.www * r1.xyz) + r0.xyz;
    r0 = float4(_355.x, _355.y, _355.z, r0.w);
    float4 _373 = r0;
    _373.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _373;
    float4 _378 = r0;
    _378.w = rsqrt(r0.w);
    r0 = _378;
    float3 _385 = r0.www * shader_in[1].xyz;
    r1 = float4(_385.x, _385.y, _385.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float3 _407 = r3.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r3 = float4(_407.x, _407.y, _407.z, r3.w);
    r4 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].zwzz.xy);
    float3 _433 = (r4.xyz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r3.xyz);
    r4 = float4(_433.x, _433.y, _433.z, r4.w);
    float3 _443 = (r1.www * r4.xyz) + r3.xyz;
    r3 = float4(_443.x, _443.y, _443.z, r3.w);
    float4 _460 = r0;
    _460.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _460;
    float4 _477 = r0;
    _477.y = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _477;
    float4 _482 = r0;
    _482.y = rsqrt(r0.y);
    r0 = _482;
    float3 _492 = (shader_in[2].xyz * r0.yyy) + r1.xyz;
    r0 = float4(r0.x, _492.x, _492.y, _492.z);
    float4 _508 = r1;
    _508.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r1 = _508;
    float4 _513 = r1;
    _513.x = rsqrt(r1.x);
    r1 = _513;
    float3 _519 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _519.x, _519.y, _519.z);
    float4 _536 = r0;
    _536.y = clamp(mad(r2.xyz.z, r0.yzw.z, mad(r2.xyz.y, r0.yzw.y, r2.xyz.x * r0.yzw.x)), 0.0f, 1.0f);
    r0 = _536;
    float2 _548 = float2(cb2_m[3].x, cb2_m[3].y) + asfloat(uint2(925353388u, 925353388u));
    r0 = float4(r0.x, r0.y, _548.x, _548.y);
    float4 _554 = r0;
    _554.y = log2(r0.y);
    r0 = _554;
    float2 _560 = r0.yy * r0.zw;
    r0 = float4(r0.x, _560.x, _560.y, r0.w);
    float2 _565 = exp2(r0.yz);
    r0 = float4(r0.x, _565.x, _565.y, r0.w);
    float2 _577 = r0.yz * float2(cb2_m[2].z, cb2_m[2].w);
    r0 = float4(r0.x, _577.x, _577.y, r0.w);
    float4 _585 = r0;
    _585.y = r0.y * r3.w;
    r0 = _585;
    float4 _596 = r0;
    _596.z = (r4.w * r0.z) + (-r0.y);
    r0 = _596;
    float4 _606 = r0;
    _606.y = (r1.w * r0.z) + r0.y;
    r0 = _606;
    float3 _615 = (r3.xyz * r0.xxx) + r0.yyy;
    r0 = float4(_615.x, _615.y, _615.z, r0.w);
    float3 _628 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_628.x, _628.y, _628.z, o0.w);
    float4 _632 = o0;
    _632.w = asfloat(1065353216u);
    o0 = _632;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    float4 _645 = shader_in[3];
    _645.x = v3;
    shader_in[3] = _645;
    shader_in[4] = v4;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
