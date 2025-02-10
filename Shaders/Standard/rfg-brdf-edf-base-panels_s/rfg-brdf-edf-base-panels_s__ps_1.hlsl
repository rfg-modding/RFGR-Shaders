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
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt2s2;

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
    float3 _156 = (cb2_m[6].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
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
    float4 _225 = r1;
    _225.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _225;
    float4 _230 = r1;
    _230.y = rsqrt(r1.x);
    r1 = _230;
    float4 _235 = r1;
    _235.x = sqrt(r1.x);
    r1 = _235;
    float4 _251 = r1;
    _251.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _251;
    float3 _258 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _258.x, _258.y, _258.z);
    float3 _269 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_269.x, _269.y, _269.z, r2.w);
    float4 _286 = r0;
    _286.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _286;
    float4 _291 = r0;
    _291.w = rsqrt(r0.w);
    r0 = _291;
    float3 _297 = r0.www * r2.xyz;
    r2 = float4(_297.x, _297.y, _297.z, r2.w);
    float4 _313 = r0;
    _313.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _313;
    float4 _328 = r0;
    _328.x = mad(r1.yzw.z, r0.xyz.z, mad(r1.yzw.y, r0.xyz.y, r1.yzw.x * r0.xyz.x));
    r0 = _328;
    float3 _332 = -r1.yzw;
    float4 _346 = r0;
    _346.y = mad(_332.z, shader_in[4].xyz.z, mad(_332.y, shader_in[4].xyz.y, _332.x * shader_in[4].xyz.x));
    r0 = _346;
    float4 _354 = r0;
    _354.y = min(r0.y, cb1_m[2].x);
    r0 = _354;
    float4 _363 = r0;
    _363.y = r0.y + (-cb1_m[2].y);
    r0 = _363;
    float4 _369 = r0;
    _369.y = max(r0.y, asfloat(0u));
    r0 = _369;
    float4 _377 = r0;
    _377.y = r0.y * cb1_m[2].z;
    r0 = _377;
    float4 _383 = r0;
    _383.z = max(r0.w, asfloat(0u));
    r0 = _383;
    float4 _388 = r0;
    _388.z = log2(r0.z);
    r0 = _388;
    float3 _397 = r0.zzz * asfloat(uint3(1115684864u, 1107296256u, 1098907648u));
    r1 = float4(r1.x, _397.x, _397.y, _397.z);
    float3 _402 = exp2(r1.yzw);
    r1 = float4(r1.x, _402.x, _402.y, _402.z);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _417 = r1.yzw * r2.xyz;
    r1 = float4(r1.x, _417.x, _417.y, _417.z);
    float3 _430 = r1.zzz * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_430.x, _430.y, _430.z, r2.w);
    float3 _446 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r1.yyy) + r2.xyz;
    r2 = float4(_446.x, _446.y, _446.z, r2.w);
    float3 _462 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r1.www) + r2.xyz;
    r1 = float4(r1.x, _462.x, _462.y, _462.z);
    float3 _471 = r1.yzw * cb2_m[6].w.xxx;
    r1 = float4(r1.x, _471.x, _471.y, _471.z);
    float4 _478 = r0;
    _478.z = max(r0.x, asfloat(0u));
    r0 = _478;
    float4 _487 = r0;
    _487.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _487;
    float4 _494 = r0;
    _494.x = r0.x * r0.x;
    r0 = _494;
    float4 _501 = r0;
    _501.x = r0.x * r0.x;
    r0 = _501;
    float3 _507 = r0.zzz * r1.yzw;
    r1 = float4(r1.x, _507.x, _507.y, _507.z);
    float4 _519 = r0;
    _519.z = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _519;
    float4 _529 = r0;
    _529.y = (asuint(r0.z) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _529;
    float4 _536 = r0;
    _536.y = r0.y * r1.x;
    r0 = _536;
    float3 _542 = r0.yyy * r1.yzw;
    r1 = float4(_542.x, _542.y, _542.z, r1.w);
    float2 _554 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r0 = float4(r0.x, r0.y, _554.x, _554.y);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r0.zwzz.xy);
    float4 _569 = r0;
    _569.z = max(r2.y, asfloat(1028443341u));
    r0 = _569;
    float3 _575 = r0.zzz * r1.xyz;
    r1 = float4(_575.x, _575.y, _575.z, r1.w);
    float4 _583 = r0;
    _583.z = r0.x * r0.x;
    r0 = _583;
    float3 _595 = r0.xxx * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_595.x, r2.y, _595.y, _595.z);
    float4 _603 = r0;
    _603.x = r0.z * r0.z;
    r0 = _603;
    float3 _618 = (r0.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xzw;
    r0 = float4(_618.x, r0.y, _618.y, _618.z);
    r3 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _641 = r3.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r2 = float4(_641.x, r2.y, _641.y, _641.z);
    float3 _648 = r0.xzw * r2.xzw;
    r0 = float4(_648.x, r0.y, _648.y, _648.z);
    float3 _655 = r0.yyy * r0.xzw;
    r0 = float4(_655.x, _655.y, _655.z, r0.w);
    float3 _665 = (r0.xyz * r2.yyy) + r1.xyz;
    r0 = float4(_665.x, _665.y, _665.z, r0.w);
    float3 _678 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_678.x, _678.y, _678.z, r0.w);
    float4 _687 = r0;
    _687.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _687;
    float3 _693 = r0.xyz * r0.www;
    r0 = float4(_693.x, _693.y, _693.z, r0.w);
    float4 _697 = r0;
    _697.w = asfloat(1065353216u);
    r0 = _697;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _727 = gl_FragCoord;
    _727.w = 1.0f / _727.w;
    shader_in[0] = float4(_727.xy.x, _727.xy.y, shader_in[0].z, shader_in[0].w);
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
