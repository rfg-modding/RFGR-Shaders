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
    float4 cb2_m[6] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;

static float3 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;
static float4 r4;
static float4 r5;

void ps_main()
{
    float4 _68 = r0;
    _68.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _68;
    float4 _78 = r0;
    _78.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _78;
    float4 _88 = r0;
    _88.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _88;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    float4 _113 = r1;
    _113.y = r0.y + r0.y;
    r1 = _113;
    float3 _125 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(r0.x, _125.x, _125.y, _125.z);
    float4 _133 = r0;
    _133.x = r0.w * r0.y;
    r0 = _133;
    float4 _145 = r0;
    _145.y = mad(r0.xz.y, r0.xz.y, r0.xz.x * r0.xz.x);
    r0 = _145;
    float4 _152 = r0;
    _152.y = (-r0.y) + asfloat(1065353216u);
    r0 = _152;
    float4 _158 = r0;
    _158.y = max(r0.y, asfloat(0u));
    r0 = _158;
    float4 _163 = r1;
    _163.z = sqrt(r0.y);
    r1 = _163;
    float4 _167 = r1;
    _167.x = r0.x;
    r1 = _167;
    float3 _174 = r1.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_174.x, _174.y, _174.z, r0.w);
    float3 _187 = (cb2_m[4].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_187.x, _187.y, _187.z, r0.w);
    float4 _203 = r0;
    _203.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _203;
    float4 _208 = r0;
    _208.w = rsqrt(r0.w);
    r0 = _208;
    float3 _214 = r0.www * r0.xyz;
    r0 = float4(_214.x, _214.y, _214.z, r0.w);
    float4 _232 = r0;
    _232.w = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _232;
    float4 _237 = r0;
    _237.w = rsqrt(r0.w);
    r0 = _237;
    float3 _244 = r0.www * shader_in[1].xyz;
    r1 = float4(_244.x, _244.y, _244.z, r1.w);
    float4 _263 = r0;
    _263.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _263;
    float4 _268 = r0;
    _268.w = rsqrt(r0.w);
    r0 = _268;
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[3].xyxx.xy);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].xyxx.xy);
    r4 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[3].zwzz.xy);
    float4 _303 = r1;
    _303.w = r4.w * cb2_m[3].z;
    r1 = _303;
    float3 _313 = (shader_in[2].xyz * r0.www) + r1.xyz;
    r5 = float4(_313.x, _313.y, _313.z, r5.w);
    float4 _330 = r0;
    _330.w = mad(r5.xyz.z, r5.xyz.z, mad(r5.xyz.y, r5.xyz.y, r5.xyz.x * r5.xyz.x));
    r0 = _330;
    float4 _335 = r0;
    _335.w = rsqrt(r0.w);
    r0 = _335;
    float3 _341 = r0.www * r5.xyz;
    r5 = float4(_341.x, _341.y, _341.z, r5.w);
    float4 _360 = r0;
    _360.w = clamp(mad(r0.xyz.z, r5.xyz.z, mad(r0.xyz.y, r5.xyz.y, r0.xyz.x * r5.xyz.x)), 0.0f, 1.0f);
    r0 = _360;
    float4 _365 = r0;
    _365.w = log2(r0.w);
    r0 = _365;
    float4 _374 = r5;
    _374.x = r0.w * cb2_m[5].x;
    r5 = _374;
    float4 _382 = r5;
    _382.y = r0.w * cb2_m[4].y;
    r5 = _382;
    float4 _391 = r5;
    _391.z = r0.w * cb2_m[3].w;
    r5 = _391;
    float3 _395 = exp2(r5.zxy);
    r5 = float4(_395.x, _395.y, _395.z, r5.w);
    float2 _406 = r5.yz * float2(cb2_m[4].w, cb2_m[4].x);
    r5 = float4(r5.x, _406.x, _406.y, r5.w);
    float4 _423 = r0;
    _423.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r0 = _423;
    float3 _435 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r0 = float4(r0.x, _435.x, _435.y, _435.z);
    float4 _445 = r1;
    _445.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _445;
    float4 _456 = r1;
    _456.x = (r5.x * r1.x) + (-r0.x);
    r1 = _456;
    float4 _466 = r1;
    _466.x = (r3.w * r1.x) + r0.x;
    r1 = _466;
    float3 _472 = r0.yzw * r1.xxx;
    r0 = float4(r0.x, _472.x, _472.y, _472.z);
    float3 _483 = (r0.xxx * r4.xyz) + (-r0.yzw);
    r1 = float4(_483.x, _483.y, _483.z, r1.w);
    float3 _493 = (r1.www * r1.xyz) + r0.yzw;
    r0 = float4(_493.x, _493.y, _493.z, r0.w);
    float3 _506 = r5.yyy * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r1 = float4(_506.x, _506.y, _506.z, r1.w);
    float4 _518 = r0;
    _518.w = ((-r4.w) * cb2_m[3].z) + asfloat(1065353216u);
    r0 = _518;
    float3 _534 = (r5.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) + (-r1.xyz);
    r2 = float4(_534.x, _534.y, _534.z, r2.w);
    float3 _544 = (r3.www * r2.xyz) + r1.xyz;
    r1 = float4(_544.x, _544.y, _544.z, r1.w);
    float3 _551 = r3.xyz * r1.xyz;
    r1 = float4(_551.x, _551.y, _551.z, r1.w);
    float3 _561 = (r1.xyz * r0.www) + r0.xyz;
    r0 = float4(_561.x, _561.y, _561.z, r0.w);
    float3 _574 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_574.x, _574.y, _574.z, o0.w);
    float4 _578 = o0;
    _578.w = asfloat(1065353216u);
    o0 = _578;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = v3;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
