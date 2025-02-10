cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float2 v1;
static float4 v2;
static float4 v3;
static float4 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

static float4 shader_in[6];
static float4 o0;
static float4 r0;
static float4 r1;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[4].zwzz.xy);
    float2 _69 = r0.xy * r1.xy;
    r0 = float4(_69.x, _69.y, r0.z, r0.w);
    float2 _78 = r0.xy * shader_in[5].yy;
    r0 = float4(_78.x, _78.y, r0.z, r0.w);
    float2 _91 = (r0.xy * asfloat(uint2(1073741824u, 1073741824u))) + asfloat(uint2(3212836864u, 3212836864u));
    r0 = float4(_91.x, _91.y, r0.z, r0.w);
    float2 _104 = (r0.xy * asfloat(uint2(1050253722u, 1050253722u))) + shader_in[1].xy;
    r0 = float4(_104.x, _104.y, r0.z, r0.w);
    float2 _113 = (-r0.xy) + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(r0.x, r0.y, _113.x, _113.y);
    float4 _123 = r1;
    _123.x = shader_in[2].w + asfloat(3189348762u);
    r1 = _123;
    float2 _136 = clamp(r1.xx * asfloat(uint2(1082130432u, 1066833559u)), 0.0f.xx, 1.0f.xx);
    r1 = float4(_136.x, _136.y, r1.z, r1.w);
    float2 _146 = (r1.yy * r0.zw) + r0.xy;
    r0 = float4(_146.x, _146.y, r0.z, r0.w);
    float2 _155 = r0.xy + (-shader_in[1].xy);
    r0 = float4(_155.x, _155.y, r0.z, r0.w);
    float2 _166 = (r1.xx * r0.xy) + shader_in[1].xy;
    r0 = float4(_166.x, _166.y, r0.z, r0.w);
    float2 _174 = r0.xy + asfloat(uint2(3204448256u, 3204448256u));
    r0 = float4(_174.x, _174.y, r0.z, r0.w);
    float4 _185 = r0;
    _185.z = (-shader_in[3].w) + asfloat(1065353216u);
    r0 = _185;
    float4 _192 = r0;
    _192.w = r0.z * r0.z;
    r0 = _192;
    float4 _199 = r0;
    _199.w = r0.w * r0.w;
    r0 = _199;
    float4 _208 = r0;
    _208.w = clamp(r0.w * shader_in[5].x, 0.0f, 1.0f);
    r0 = _208;
    float2 _216 = (r0.ww * r0.xy) + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_216.x, _216.y, r0.z, r0.w);
    float2 _223 = r0.xy + r0.xy;
    r1 = float4(_223.x, _223.y, r1.z, r1.w);
    float4 _232 = r0;
    _232.x = (-shader_in[5].z) + asfloat(1065353216u);
    r0 = _232;
    float4 _235 = r1;
    _235.z = asfloat(1065353216u);
    r1 = _235;
    float3 _241 = r0.xxx * r1.xyz;
    r1 = float4(_241.x, _241.y, _241.z, r1.w);
    float3 _263 = (shader_in[5].zzz * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r1.xyz;
    r1 = float4(_263.x, _263.y, _263.z, r1.w);
    float4 _282 = r0;
    _282.x = clamp(mad(shader_in[2].xyz.z, shader_in[3].xyz.z, mad(shader_in[2].xyz.y, shader_in[3].xyz.y, shader_in[2].xyz.x * shader_in[3].xyz.x)), 0.0f, 1.0f);
    r0 = _282;
    float4 _289 = r0;
    _289.x = (-r0.x) + asfloat(1065353216u);
    r0 = _289;
    float4 _301 = r0;
    _301.x = mad(r0.xx.y, r0.xx.y, r0.xx.x * r0.xx.x);
    r0 = _301;
    float4 _307 = r0;
    _307.x = min(r0.x, asfloat(1065353216u));
    r0 = _307;
    float4 _314 = r0;
    _314.x = r0.x * r0.w;
    r0 = _314;
    float4 _321 = r1;
    _321.w = r0.z * r0.x;
    r1 = _321;
    o0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    shader_in[4] = v4;
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    frag_main();
}
