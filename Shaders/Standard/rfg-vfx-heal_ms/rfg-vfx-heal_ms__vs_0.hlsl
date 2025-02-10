cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static float3 v2;
static float3 v3;
static float3 v4;
static float3 v5;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float3 v5 : TEXCOORD5;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[6];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float4 _48 = r0;
    _48.x = shader_in[4].x * asfloat(1082130432u);
    r0 = _48;
    float3 _61 = (r0.xxx * shader_in[3].xyz) + shader_in[0].xyz;
    r0 = float4(_61.x, _61.y, _61.z, r0.w);
    float4 _66 = r0;
    _66.w = asfloat(1065353216u);
    r0 = _66;
    float4 _82 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _97 = r1;
    _97.x = mad(_82.w, r0.w, mad(_82.z, r0.z, mad(_82.y, r0.y, _82.x * r0.x)));
    r1 = _97;
    float4 _109 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _123 = r1;
    _123.y = mad(_109.w, r0.w, mad(_109.z, r0.z, mad(_109.y, r0.y, _109.x * r0.x)));
    r1 = _123;
    float4 _135 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _149 = r1;
    _149.z = mad(_135.w, r0.w, mad(_135.z, r0.z, mad(_135.y, r0.y, _135.x * r0.x)));
    r1 = _149;
    float4 _152 = r1;
    _152.w = asfloat(1065353216u);
    r1 = _152;
    float4 _163 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _177 = o0;
    _177.x = mad(_163.w, r1.w, mad(_163.z, r1.z, mad(_163.y, r1.y, _163.x * r1.x)));
    o0 = _177;
    float4 _188 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _202 = o0;
    _202.y = mad(_188.w, r1.w, mad(_188.z, r1.z, mad(_188.y, r1.y, _188.x * r1.x)));
    o0 = _202;
    float4 _213 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _227 = o0;
    _227.z = mad(_213.w, r1.w, mad(_213.z, r1.z, mad(_213.y, r1.y, _213.x * r1.x)));
    o0 = _227;
    float4 _238 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _252 = o0;
    _252.w = mad(_238.w, r1.w, mad(_238.z, r1.z, mad(_238.y, r1.y, _238.x * r1.x)));
    o0 = _252;
    r0 = float4(asint(shader_in[1].xyxx));
    float2 _267 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    r2 = float4(_267.x, _267.y, r2.z, r2.w);
    o1 = float4(r2.xy.x, o1.y, o1.z, r2.xy.y);
    float3 _286 = cb0_m[12].x.xxx * asfloat(uint3(1028443341u, 1036831949u, 3184315597u));
    r2 = float4(_286.x, _286.y, _286.z, r2.w);
    float2 _297 = (r0.yw * asfloat(uint2(981467136u, 985661440u))) + r2.xz;
    o1 = float4(o1.x, _297.x, _297.y, o1.w);
    float2 _308 = (r0.zy * asfloat(uint2(989855744u, 981467136u))) + r2.yy;
    o2 = float4(_308.x, _308.y, o2.z, o2.w);
    float3 _323 = r1.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_323.x, _323.y, _323.z, r0.w);
    float3 _337 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r1 = float4(_337.x, _337.y, _337.z, r1.w);
    float4 _347 = r0;
    _347.w = r0.y * cb0_m[13].x;
    r0 = _347;
    float4 _354 = r1;
    _354.w = r0.w * asfloat(3216550459u);
    r1 = _354;
    float4 _359 = r1;
    _359.w = exp2(r1.w);
    r1 = _359;
    float4 _366 = r1;
    _366.w = (-r1.w) + asfloat(1065353216u);
    r1 = _366;
    float4 _373 = r0;
    _373.w = r1.w / r0.w;
    r0 = _373;
    float4 _385 = r1;
    _385.w = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _385;
    float4 _400 = r0;
    _400.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _400;
    float4 _405 = r0;
    _405.x = sqrt(r0.x);
    r0 = _405;
    float4 _413 = r0;
    _413.x = r0.x * cb0_m[13].y;
    r0 = _413;
    float4 _423 = r0;
    _423.y = (asuint(r1.w) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _423;
    float4 _435 = r0;
    _435.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _435;
    float4 _441 = r0;
    _441.x = exp2(-r0.x);
    r0 = _441;
    float4 _447 = r0;
    _447.x = min(r0.x, asfloat(1065353216u));
    r0 = _447;
    float4 _454 = o2;
    _454.w = (-r0.x) + asfloat(1065353216u);
    o2 = _454;
    float4 _469 = r0;
    _469.x = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _469;
    float4 _474 = r0;
    _474.x = rsqrt(r0.x);
    r0 = _474;
    float3 _480 = r0.xxx * r1.xyz;
    r0 = float4(_480.x, _480.y, _480.z, r0.w);
    float3 _493 = (shader_in[2].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_493.x, _493.y, _493.z, r1.w);
    float3 _503 = (shader_in[5].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_503.x, _503.y, _503.z, r2.w);
    float3 _514 = (shader_in[4].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_514.x, _514.y, _514.z, r1.w);
    float3 _524 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _536 = r2;
    _536.x = mad(_524.z, r1.xyz.z, mad(_524.y, r1.xyz.y, _524.x * r1.xyz.x));
    r2 = _536;
    float3 _545 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _557 = r2;
    _557.y = mad(_545.z, r1.xyz.z, mad(_545.y, r1.xyz.y, _545.x * r1.xyz.x));
    r2 = _557;
    float3 _566 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _578 = r2;
    _578.z = mad(_566.z, r1.xyz.z, mad(_566.y, r1.xyz.y, _566.x * r1.xyz.x));
    r2 = _578;
    float4 _593 = r0;
    _593.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _593;
    float4 _598 = r0;
    _598.w = rsqrt(r0.w);
    r0 = _598;
    float3 _604 = r0.www * r2.xyz;
    r1 = float4(_604.x, _604.y, _604.z, r1.w);
    float4 _623 = o2;
    _623.z = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    o2 = _623;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _631 = asfloat(v1);
    shader_in[1] = float4(_631.x, _631.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = float4(v5.x, v5.y, v5.z, shader_in[5].w);
    vs_main();
    gl_Position = o0;
    gl_PointSize = 1.0f;
    gl_Position.x = gl_Position.x - gl_HalfPixel.x * gl_Position.w;
    gl_Position.y = gl_Position.y + gl_HalfPixel.y * gl_Position.w;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    v0 = stage_input.v0;
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
