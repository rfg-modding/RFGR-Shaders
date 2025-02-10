cbuffer cb0_t : register(b160)
{
    float4 cb0_m[13] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

cbuffer cb2_t : register(b162)
{
    float4 cb2_m[5] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static float3 v0;
static int2 v1;
static int2 v2;
static int2 v3;
static float3 v4;
static float4 v5;
static float3 v6;
static float3 v7;
static float3 v8;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float3 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
    float3 v8 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[9];
static float4 o0;
static float2 o1;
static float3 o2;
static float3 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    float4 _67 = r0;
    _67.x = shader_in[7].x * asfloat(1082130432u);
    r0 = _67;
    float3 _80 = (r0.xxx * shader_in[6].xyz) + shader_in[0].xyz;
    r0 = float4(_80.x, _80.y, _80.z, r0.w);
    float4 _85 = r0;
    _85.w = asfloat(1065353216u);
    r0 = _85;
    float4 _100 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _115 = r1;
    _115.x = mad(_100.w, r0.w, mad(_100.z, r0.z, mad(_100.y, r0.y, _100.x * r0.x)));
    r1 = _115;
    float4 _127 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _141 = r1;
    _141.y = mad(_127.w, r0.w, mad(_127.z, r0.z, mad(_127.y, r0.y, _127.x * r0.x)));
    r1 = _141;
    float4 _153 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _167 = r1;
    _167.z = mad(_153.w, r0.w, mad(_153.z, r0.z, mad(_153.y, r0.y, _153.x * r0.x)));
    r1 = _167;
    float4 _170 = r1;
    _170.w = asfloat(1065353216u);
    r1 = _170;
    float4 _181 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _195 = o0;
    _195.x = mad(_181.w, r1.w, mad(_181.z, r1.z, mad(_181.y, r1.y, _181.x * r1.x)));
    o0 = _195;
    float4 _206 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _220 = o0;
    _220.y = mad(_206.w, r1.w, mad(_206.z, r1.z, mad(_206.y, r1.y, _206.x * r1.x)));
    o0 = _220;
    float4 _231 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _245 = o0;
    _245.z = mad(_231.w, r1.w, mad(_231.z, r1.z, mad(_231.y, r1.y, _231.x * r1.x)));
    o0 = _245;
    float4 _257 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _271 = o0;
    _271.w = mad(_257.w, r1.w, mad(_257.z, r1.z, mad(_257.y, r1.y, _257.x * r1.x)));
    o0 = _271;
    float3 _285 = (-r1.xyz) + float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z);
    r0 = float4(_285.x, _285.y, _285.z, r0.w);
    float2 _292 = float2(asint(shader_in[3].xy));
    r1 = float4(_292.x, _292.y, r1.z, r1.w);
    float2 _306 = cb0_m[12].x.xx * float2(cb2_m[3].y, cb2_m[3].z);
    r1 = float4(r1.x, r1.y, _306.x, _306.y);
    o1 = (r1.xy * asfloat(uint2(981467136u, 981467136u))) + r1.zw;
    float3 _331 = (shader_in[4].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_331.x, _331.y, _331.z, r1.w);
    float3 _341 = (shader_in[8].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(_341.x, _341.y, _341.z, r2.w);
    float3 _353 = (shader_in[7].xxx * r2.xyz) + r1.xyz;
    r1 = float4(_353.x, _353.y, _353.z, r1.w);
    float3 _363 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _375 = r2;
    _375.x = mad(_363.z, r1.xyz.z, mad(_363.y, r1.xyz.y, _363.x * r1.xyz.x));
    r2 = _375;
    float3 _384 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _396 = r2;
    _396.y = mad(_384.z, r1.xyz.z, mad(_384.y, r1.xyz.y, _384.x * r1.xyz.x));
    r2 = _396;
    float3 _405 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _417 = r2;
    _417.z = mad(_405.z, r1.xyz.z, mad(_405.y, r1.xyz.y, _405.x * r1.xyz.x));
    r2 = _417;
    float4 _432 = r0;
    _432.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _432;
    float4 _437 = r0;
    _437.w = rsqrt(r0.w);
    r0 = _437;
    float3 _443 = r0.www * r2.xyz;
    r1 = float4(_443.x, _443.y, _443.z, r1.w);
    r2 = (shader_in[5] * asfloat(uint4(1073741824u, 1073741824u, 1073741824u, 1073741824u))) + asfloat(uint4(3212836864u, 3212836864u, 3212836864u, 3212836864u));
    float3 _463 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _476 = r3;
    _476.x = mad(_463.z, r2.xyz.z, mad(_463.y, r2.xyz.y, _463.x * r2.xyz.x));
    r3 = _476;
    float3 _485 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _497 = r3;
    _497.y = mad(_485.z, r2.xyz.z, mad(_485.y, r2.xyz.y, _485.x * r2.xyz.x));
    r3 = _497;
    float3 _506 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _518 = r3;
    _518.z = mad(_506.z, r2.xyz.z, mad(_506.y, r2.xyz.y, _506.x * r2.xyz.x));
    r3 = _518;
    float4 _533 = r0;
    _533.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _533;
    float4 _538 = r0;
    _538.w = rsqrt(r0.w);
    r0 = _538;
    float3 _544 = r0.www * r3.xyz;
    r2 = float4(_544.x, _544.y, _544.z, r2.w);
    float3 _551 = r1.zxy * r2.yzx;
    r3 = float4(_551.x, _551.y, _551.z, r3.w);
    float3 _562 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_562.x, _562.y, _562.z, r3.w);
    float3 _569 = r2.www * r3.xyz;
    r3 = float4(_569.x, _569.y, _569.z, r3.w);
    float3 _579 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _591 = o2;
    _591.y = mad(_579.z, r3.xyz.z, mad(_579.y, r3.xyz.y, _579.x * r3.xyz.x));
    o2 = _591;
    float3 _600 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _612 = o2;
    _612.z = mad(_600.z, r1.xyz.z, mad(_600.y, r1.xyz.y, _600.x * r1.xyz.x));
    o2 = _612;
    float3 _621 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _633 = o2;
    _633.x = mad(_621.z, r2.xyz.z, mad(_621.y, r2.xyz.y, _621.x * r2.xyz.x));
    o2 = _633;
    float4 _648 = r0;
    _648.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _648;
    float4 _653 = r0;
    _653.w = rsqrt(r0.w);
    r0 = _653;
    float3 _659 = r0.www * r0.xyz;
    r0 = float4(_659.x, _659.y, _659.z, r0.w);
    float3 _675 = o3;
    _675.x = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    o3 = _675;
    float3 _690 = o3;
    _690.z = mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x));
    o3 = _690;
    float3 _705 = o3;
    _705.y = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    o3 = _705;
    float2 _711 = float2(asint(shader_in[1].xy));
    r0 = float4(_711.x, _711.y, r0.z, r0.w);
    float2 _724 = cb0_m[12].x.xx * float2(cb2_m[4].x, cb2_m[4].y);
    r0 = float4(r0.x, r0.y, _724.x, _724.y);
    float2 _733 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    o4 = float4(_733.x, _733.y, o4.z, o4.w);
    float2 _740 = float2(asint(shader_in[2].xy));
    r0 = float4(_740.x, _740.y, r0.z, r0.w);
    float2 _753 = cb0_m[12].x.xx * float2(cb2_m[2].x, cb2_m[2].y);
    r0 = float4(r0.x, r0.y, _753.x, _753.y);
    float2 _762 = (r0.xy * asfloat(uint2(981467136u, 981467136u))) + r0.zw;
    r0 = float4(_762.x, _762.y, r0.z, r0.w);
    float4 _771 = o4;
    _771.z = r0.x * cb2_m[2].w;
    o4 = _771;
    float4 _779 = o4;
    _779.w = r0.y * cb2_m[3].x;
    o4 = _779;
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    float2 _787 = asfloat(v1);
    shader_in[1] = float4(_787.x, _787.y, shader_in[1].z, shader_in[1].w);
    float2 _792 = asfloat(v2);
    shader_in[2] = float4(_792.x, _792.y, shader_in[2].z, shader_in[2].w);
    float2 _797 = asfloat(v3);
    shader_in[3] = float4(_797.x, _797.y, shader_in[3].z, shader_in[3].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = float4(v6.x, v6.y, v6.z, shader_in[6].w);
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
    shader_in[8] = float4(v8.x, v8.y, v8.z, shader_in[8].w);
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
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    v8 = stage_input.v8;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
