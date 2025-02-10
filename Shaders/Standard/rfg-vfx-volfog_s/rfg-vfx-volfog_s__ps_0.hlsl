cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[14] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;
static float3 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    float4 _58 = r0;
    _58.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _58;
    float4 _63 = r0;
    _63.x = rsqrt(r0.x);
    r0 = _63;
    float3 _70 = r0.xxx * shader_in[2].xyz;
    r0 = float4(r0.x, _70.x, _70.y, _70.z);
    float3 _79 = r0.xxx * shader_in[1].xyz;
    r1 = float4(_79.x, _79.y, _79.z, r1.w);
    float4 _96 = r0;
    _96.x = mad(r0.yzw.z, r0.yzw.z, mad(r0.yzw.y, r0.yzw.y, r0.yzw.x * r0.yzw.x));
    r0 = _96;
    float3 _112 = float3(cb2_m[8].y, cb2_m[8].z, cb2_m[8].w);
    float4 _124 = r0;
    _124.y = mad(_112.z, r0.yzw.z, mad(_112.y, r0.yzw.y, _112.x * r0.yzw.x));
    r0 = _124;
    float4 _131 = r0;
    _131.x = r0.x + asfloat(3229614080u);
    r0 = _131;
    float4 _142 = r0;
    _142.x = (r0.y * r0.y) + (-r0.x);
    r0 = _142;
    float4 _153 = r0;
    _153.z = asfloat((r0.x < asfloat(0u)) ? 4294967295u : 0u);
    r0 = _153;
    float4 _158 = r0;
    _158.x = sqrt(r0.x);
    r0 = _158;
    if (asuint(r0.z) != 0u)
    {
        discard;
    }
    float4 _174 = r2;
    _174.x = (-r0.x) + (-r0.y);
    r2 = _174;
    float4 _182 = r2;
    _182.y = r0.x + (-r0.y);
    r2 = _182;
    float2 _191 = r2.xy * asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_191.x, _191.y, r0.z, r0.w);
    float2 _198 = max(r0.xy, asfloat(uint2(0u, 0u)));
    r0 = float4(_198.x, _198.y, r0.z, r0.w);
    float2 _208 = shader_in[3].xy / shader_in[3].ww;
    r0 = float4(r0.x, r0.y, _208.x, _208.y);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, r0.zwzz.xy);
    float2 _231 = float2(cb2_m[0].z, cb2_m[0].w) + float2(cb2_m[1].z, cb2_m[1].w);
    r0 = float4(r0.x, r0.y, _231.x, _231.y);
    float2 _245 = (r2.xx * float2(cb2_m[2].z, cb2_m[2].w)) + r0.zw;
    r0 = float4(r0.x, r0.y, _245.x, _245.y);
    float2 _256 = r0.zw + float2(cb2_m[3].z, cb2_m[3].w);
    r0 = float4(r0.x, r0.y, _256.x, _256.y);
    float4 _264 = r0;
    _264.z = r0.z / r0.w;
    r0 = _264;
    float3 _276 = float3(cb2_m[7].y, cb2_m[7].z, cb2_m[7].w);
    float4 _286 = r0;
    _286.w = mad(r1.xyz.z, _276.z, mad(r1.xyz.y, _276.y, r1.xyz.x * _276.x));
    r0 = _286;
    float4 _293 = r0;
    _293.z = r0.z / r0.w;
    r0 = _293;
    float4 _300 = r0;
    _300.y = min(r0.y, r0.z);
    r0 = _300;
    float4 _307 = r0;
    _307.y = max(r0.y, r0.x);
    r0 = _307;
    float4 _315 = r0;
    _315.y = (-r0.x) + r0.y;
    r0 = _315;
    float3 _331 = (r0.xxx * r1.xyz) + float3(cb2_m[9].y, cb2_m[9].z, cb2_m[9].w);
    r0 = float4(_331.x, r0.y, _331.y, _331.z);
    float3 _338 = r1.xyz * r0.yyy;
    r1 = float4(_338.x, _338.y, _338.z, r1.w);
    float3 _353 = r0.xzw + (-float3(cb2_m[10].y, cb2_m[10].z, cb2_m[10].w));
    r0 = float4(_353.x, _353.y, _353.z, r0.w);
    float3 _366 = float3(cb2_m[11].y, cb2_m[11].z, cb2_m[11].w);
    float4 _376 = r0;
    _376.x = mad(r0.xyz.z, _366.z, mad(r0.xyz.y, _366.y, r0.xyz.x * _366.x));
    r0 = _376;
    float4 _383 = r0;
    _383.x = r0.x * asfloat(3216550459u);
    r0 = _383;
    float4 _388 = r0;
    _388.x = exp2(r0.x);
    r0 = _388;
    float4 _403 = r0;
    _403.y = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _403;
    float3 _414 = float3(cb2_m[11].y, cb2_m[11].z, cb2_m[11].w);
    float4 _424 = r0;
    _424.z = mad(r1.xyz.z, _414.z, mad(r1.xyz.y, _414.y, r1.xyz.x * _414.x));
    r0 = _424;
    float4 _429 = r0;
    _429.y = sqrt(r0.y);
    r0 = _429;
    float4 _436 = r0;
    _436.x = r0.x * r0.y;
    r0 = _436;
    float4 _442 = r0;
    _442.y = r0.z * asfloat(3216550459u);
    r0 = _442;
    float4 _447 = r0;
    _447.y = exp2(r0.y);
    r0 = _447;
    float4 _455 = r0;
    _455.y = (-r0.y) + asfloat(1065353216u);
    r0 = _455;
    float4 _462 = r0;
    _462.y = r0.y / r0.z;
    r0 = _462;
    float4 _472 = r0;
    _472.z = asfloat((asfloat(981668463u) < abs(r0.z)) ? 4294967295u : 0u);
    r0 = _472;
    float4 _479 = r0;
    _479.y = r0.y * r0.x;
    r0 = _479;
    float4 _490 = r0;
    _490.x = (asuint(r0.z) != 0u) ? r0.y : r0.x;
    r0 = _490;
    float4 _500 = r0;
    _500.x = r0.x * (-cb2_m[13].w);
    r0 = _500;
    float4 _505 = r0;
    _505.x = exp2(r0.x);
    r0 = _505;
    float4 _512 = o0;
    _512.w = (-r0.x) + asfloat(1065353216u);
    o0 = _512;
    float3 _522 = float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z);
    o0 = float4(_522.x, _522.y, _522.z, o0.w);
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
