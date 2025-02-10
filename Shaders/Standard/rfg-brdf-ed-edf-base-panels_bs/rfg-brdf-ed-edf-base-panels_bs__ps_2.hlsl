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
    float4 cb2_m[8] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

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
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float4 _73 = r0;
    _73.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _73;
    float4 _83 = r0;
    _83.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _83;
    float4 _93 = r0;
    _93.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _93;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[4].xyxx.xy);
    float3 _122 = r0.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r1 = float4(_122.x, _122.y, _122.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt3s3, shader_in[4].zwzz.xy);
    float4 _142 = r0;
    _142.w = r2.w * cb2_m[7].x;
    r0 = _142;
    r3 = tex2D(SPIRV_Cross_Combinedt4s4, shader_in[1].xyxx.xy);
    float4 _160 = r1;
    _160.w = r3.w * cb2_m[6].x;
    r1 = _160;
    float3 _176 = ((-r0.xyz) * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) + r2.xyz;
    r0 = float4(_176.x, _176.y, _176.z, r0.w);
    float3 _186 = (r0.www * r0.xyz) + r1.xyz;
    r0 = float4(_186.x, _186.y, _186.z, r0.w);
    float3 _194 = (-r0.xyz) + r3.xyz;
    r1 = float4(_194.x, _194.y, _194.z, r1.w);
    float3 _204 = (r1.www * r1.xyz) + r0.xyz;
    r0 = float4(_204.x, _204.y, _204.z, r0.w);
    float3 _212 = r2.xyz + (-r3.xyz);
    r1 = float4(_212.x, _212.y, _212.z, r1.w);
    float4 _221 = r2;
    _221.x = (-cb2_m[6].y) + asfloat(1065353216u);
    r2 = _221;
    float4 _228 = r2;
    _228.x = r0.w * r2.x;
    r2 = _228;
    float4 _235 = r2;
    _235.x = r1.w * r2.x;
    r2 = _235;
    float3 _244 = (r2.xxx * r1.xyz) + r0.xyz;
    r0 = float4(_244.x, _244.y, _244.z, r0.w);
    float4 _254 = r0;
    _254.w = (r0.w * r1.w) + asfloat(1065353216u);
    r0 = _254;
    float4 _266 = r0;
    _266.w = ((-r2.w) * cb2_m[7].x) + r0.w;
    r0 = _266;
    float4 _278 = r0;
    _278.w = ((-r3.w) * cb2_m[6].x) + r0.w;
    r0 = _278;
    float4 _296 = r1;
    _296.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _296;
    float4 _301 = r1;
    _301.x = rsqrt(r1.x);
    r1 = _301;
    float3 _308 = r1.xxx * shader_in[2].xyz;
    r1 = float4(_308.x, _308.y, _308.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    float4 _324 = r3;
    _324.y = r2.y + r2.y;
    r3 = _324;
    float3 _336 = (r2.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _336.x, _336.y, _336.z);
    float4 _344 = r2;
    _344.x = r2.w * r2.y;
    r2 = _344;
    float4 _356 = r1;
    _356.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r1 = _356;
    float4 _363 = r1;
    _363.w = (-r1.w) + asfloat(1065353216u);
    r1 = _363;
    float4 _369 = r1;
    _369.w = max(r1.w, asfloat(0u));
    r1 = _369;
    float4 _374 = r3;
    _374.z = sqrt(r1.w);
    r3 = _374;
    float4 _378 = r3;
    _378.x = r2.x;
    r3 = _378;
    float3 _385 = r3.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r2 = float4(_385.x, _385.y, _385.z, r2.w);
    float3 _397 = (cb2_m[7].y.xxx * r2.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r2 = float4(_397.x, _397.y, _397.z, r2.w);
    float4 _413 = r1;
    _413.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r1 = _413;
    float4 _418 = r1;
    _418.w = rsqrt(r1.w);
    r1 = _418;
    float3 _424 = r1.www * r2.xyz;
    r2 = float4(_424.x, _424.y, _424.z, r2.w);
    float4 _443 = r1;
    _443.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r1 = _443;
    float4 _448 = r1;
    _448.w = rsqrt(r1.w);
    r1 = _448;
    float3 _458 = (shader_in[3].xyz * r1.www) + r1.xyz;
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float4 _474 = r1;
    _474.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r1 = _474;
    float4 _479 = r1;
    _479.w = rsqrt(r1.w);
    r1 = _479;
    float3 _485 = r1.www * r3.xyz;
    r3 = float4(_485.x, _485.y, _485.z, r3.w);
    float4 _501 = r1;
    _501.x = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r1 = _501;
    float4 _516 = r1;
    _516.y = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    r1 = _516;
    float4 _525 = r1;
    _525.z = (r1.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _525;
    float2 _532 = max(r1.xy, asfloat(uint2(0u, 0u)));
    r1 = float4(_532.x, _532.y, r1.z, r1.w);
    float4 _540 = r1;
    _540.z = r1.z * r1.z;
    r1 = _540;
    float4 _547 = r1;
    _547.z = r1.z * r1.z;
    r1 = _547;
    float4 _554 = r1;
    _554.w = r1.z * r1.z;
    r1 = _554;
    float4 _561 = r1;
    _561.w = r1.w * r1.w;
    r1 = _561;
    float3 _573 = r1.zzz * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_573.x, _573.y, _573.z, r2.w);
    float3 _589 = (r1.www * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xyz;
    r2 = float4(_589.x, _589.y, _589.z, r2.w);
    r3 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[4].xyxx.xy);
    float4 _603 = r1;
    _603.y = log2(r1.y);
    r1 = _603;
    float3 _612 = r1.yyy * asfloat(uint3(1115684864u, 1107296256u, 1098907648u));
    r1 = float4(r1.x, _612.x, _612.y, _612.z);
    float3 _617 = exp2(r1.yzw);
    r1 = float4(r1.x, _617.x, _617.y, _617.z);
    float3 _624 = r3.xyz * r1.yzw;
    r1 = float4(r1.x, _624.x, _624.y, _624.z);
    float3 _636 = clamp(r1.yzw + r1.yzw, 0.0f.xxx, 1.0f.xxx);
    r1 = float4(r1.x, _636.x, _636.y, _636.z);
    float3 _649 = r1.zzz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r3 = float4(_649.x, _649.y, _649.z, r3.w);
    float3 _665 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.yyy) + r3.xyz;
    r3 = float4(_665.x, _665.y, _665.z, r3.w);
    float3 _681 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r1.www) + r3.xyz;
    r1 = float4(r1.x, _681.x, _681.y, _681.z);
    float3 _690 = r1.yzw * cb2_m[7].z.xxx;
    r1 = float4(r1.x, _690.x, _690.y, _690.z);
    float3 _697 = r1.xxx * r1.yzw;
    r1 = float4(_697.x, _697.y, _697.z, r1.w);
    float3 _704 = r0.www * r1.xyz;
    r1 = float4(_704.x, _704.y, _704.z, r1.w);
    float3 _714 = (r2.xyz * r0.xyz) + r1.xyz;
    r0 = float4(_714.x, _714.y, _714.z, r0.w);
    float3 _727 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_727.x, _727.y, _727.z, o0.w);
    float4 _731 = o0;
    _731.w = asfloat(1065353216u);
    o0 = _731;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
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
