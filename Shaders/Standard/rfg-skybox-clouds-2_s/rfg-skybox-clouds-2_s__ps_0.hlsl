cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float3 v1;
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float4 _56 = r0;
    _56.x = max(shader_in[2].y, asfloat(3212836864u));
    r0 = _56;
    float4 _63 = r0;
    _63.x = min(r0.x, asfloat(1065353216u));
    r0 = _63;
    float4 _77 = r0;
    _77.x = r0.x + (-cb2_m[6].z);
    r0 = _77;
    float4 _88 = r0;
    _88.y = (-cb2_m[6].z) + cb2_m[6].w;
    r0 = _88;
    float4 _98 = r0;
    _98.x = clamp(r0.x / r0.y, 0.0f, 1.0f);
    r0 = _98;
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].zwzz.xy);
    r2 = float4(r2.x, r2.y, r1.yw.x, r1.yw.y);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    r2 = float4(r3.yw.x, r3.yw.y, r2.z, r2.w);
    r2 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float3 _147 = r0.xxx * r2.yzw;
    r0 = float4(r0.x, _147.x, _147.y, _147.z);
    r2 = ((-r2) * r0.xxxx) + asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u));
    float4 _164 = r0;
    _164.x = r3.x * r2.y;
    r0 = _164;
    float4 _174 = r0;
    _174.x = (r0.y * r3.z) + r0.x;
    r0 = _174;
    float2 _180 = r1.xz * r0.zw;
    r0 = float4(r0.x, _180.x, _180.y, r0.w);
    float4 _191 = r0;
    _191.x = (r2.z * r0.x) + r0.y;
    r0 = _191;
    float4 _202 = r0;
    _202.x = clamp((r2.w * r0.x) + r0.z, 0.0f, 1.0f);
    r0 = _202;
    float4 _209 = r0;
    _209.y = r2.y * r2.x;
    r0 = _209;
    float4 _216 = r0;
    _216.y = r2.z * r0.y;
    r0 = _216;
    float4 _227 = r0;
    _227.y = clamp(((-r0.y) * r2.w) + asfloat(1065353216u), 0.0f, 1.0f);
    r0 = _227;
    float4 _237 = r0;
    _237.z = r0.y * (-cb2_m[7].y);
    r0 = _237;
    float4 _244 = r1;
    _244.w = r0.y * r0.y;
    r1 = _244;
    float4 _249 = r0;
    _249.y = exp2(r0.z);
    r0 = _249;
    float4 _255 = r0;
    _255.y = min(r0.y, asfloat(1065353216u));
    r0 = _255;
    float3 _269 = float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z) * cb2_m[7].z.xxx;
    r2 = float4(_269.x, _269.y, _269.z, r2.w);
    float3 _276 = r0.yyy * r2.xyz;
    r0 = float4(r0.x, _276.x, _276.y, _276.z);
    float4 _295 = r2;
    _295.x = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r2 = _295;
    float4 _300 = r2;
    _300.x = rsqrt(r2.x);
    r2 = _300;
    float3 _307 = r2.xxx * shader_in[1].xyz;
    r2 = float4(_307.x, _307.y, _307.z, r2.w);
    float3 _320 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float4 _330 = r2;
    _330.x = mad(r2.xyz.z, _320.z, mad(r2.xyz.y, _320.y, r2.xyz.x * _320.x));
    r2 = _330;
    float4 _339 = r2;
    _339.x = (r2.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r2 = _339;
    float3 _359 = (-float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) + float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r2 = float4(r2.x, _359.x, _359.y, _359.z);
    float3 _375 = (r2.xxx * r2.yzw) + float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_375.x, _375.y, _375.z, r2.w);
    float4 _393 = r2;
    _393.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r2 = _393;
    float4 _398 = r2;
    _398.w = rsqrt(r2.w);
    r2 = _398;
    float3 _405 = r2.www * shader_in[2].xyz;
    r3 = float4(_405.x, _405.y, _405.z, r3.w);
    float3 _417 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float4 _428 = r2;
    _428.w = clamp(mad(r3.xyz.z, _417.z, mad(r3.xyz.y, _417.y, r3.xyz.x * _417.x)), 0.0f, 1.0f);
    r2 = _428;
    float4 _433 = r2;
    _433.w = log2(r2.w);
    r2 = _433;
    float4 _440 = r2;
    _440.w = r2.w * asfloat(1106247680u);
    r2 = _440;
    float4 _445 = r2;
    _445.w = exp2(r2.w);
    r2 = _445;
    float3 _454 = (r0.yzw * r2.www) + r2.xyz;
    r0 = float4(r0.x, _454.x, _454.y, _454.z);
    float3 _470 = (r0.xxx * r0.yzw) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r0 = float4(_470.x, _470.y, _470.z, r0.w);
    float4 _479 = r0;
    _479.w = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _479;
    float3 _485 = r0.xyz * r0.www;
    r0 = float4(_485.x, _485.y, _485.z, r0.w);
    float3 _502 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_502.x, _502.y, _502.z, r1.w);
    r0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _521 = r0.www * r0.xyz;
    r0 = float4(_521.x, _521.y, _521.z, r0.w);
    o0 = min(r0, asfloat(uint4(1107296256u, 1107296256u, 1107296256u, 1107296256u)));
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
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
