cbuffer cb0_t : register(b160)
{
    float4 cb0_m[4] : packoffset(c0);
};

cbuffer cb1_t : register(b161)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb5_t : register(b165)
{
    float4 cb5_m[7] : packoffset(c0);
};

cbuffer cb6_t : register(b166)
{
    float4 cb6_m[3] : packoffset(c0);
};

uniform float4 gl_HalfPixel;

static float4 gl_Position;
static float gl_PointSize;
static int2 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float2 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[2];
static float4 o0;
static float2 o1;
static float3 o2;
static float4 o3;
static float4 o4;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    float2 _56 = float2(asint(shader_in[0].xy));
    r0 = float4(_56.x, _56.y, r0.z, r0.w);
    float4 _65 = r0;
    _65.y = r0.y + asfloat(1191182336u);
    r0 = _65;
    float4 _73 = r1;
    _73.y = r0.x * asfloat(1015021568u);
    r1 = _73;
    float4 _80 = r0;
    _80.x = r0.y * asfloat(998244352u);
    r0 = _80;
    float4 _85 = r1;
    _85.z = trunc(r0.x);
    r1 = _85;
    float4 _96 = r1;
    _96.x = ((-r1.z) * asfloat(1132462080u)) + r0.y;
    r1 = _96;
    float4 _100 = r1;
    _100.w = asfloat(1065353216u);
    r1 = _100;
    float4 _115 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _129 = r0;
    _129.x = mad(_115.w, r1.w, mad(_115.z, r1.z, mad(_115.y, r1.y, _115.x * r1.x)));
    r0 = _129;
    float4 _141 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _155 = r0;
    _155.y = mad(_141.w, r1.w, mad(_141.z, r1.z, mad(_141.y, r1.y, _141.x * r1.x)));
    r0 = _155;
    float4 _167 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _181 = r0;
    _181.z = mad(_167.w, r1.w, mad(_167.z, r1.z, mad(_167.y, r1.y, _167.x * r1.x)));
    r0 = _181;
    float3 _195 = r1.xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_195.x, _195.y, _195.z, r1.w);
    float4 _199 = r0;
    _199.w = asfloat(1065353216u);
    r0 = _199;
    float4 _210 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _224 = o0;
    _224.x = mad(_210.w, r0.w, mad(_210.z, r0.z, mad(_210.y, r0.y, _210.x * r0.x)));
    o0 = _224;
    float4 _235 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _249 = o0;
    _249.y = mad(_235.w, r0.w, mad(_235.z, r0.z, mad(_235.y, r0.y, _235.x * r0.x)));
    o0 = _249;
    float4 _260 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _274 = o0;
    _274.z = mad(_260.w, r0.w, mad(_260.z, r0.z, mad(_260.y, r0.y, _260.x * r0.x)));
    o0 = _274;
    float4 _285 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _299 = o0;
    _299.w = mad(_285.w, r0.w, mad(_285.z, r0.z, mad(_285.y, r0.y, _285.x * r0.x)));
    o0 = _299;
    float3 _310 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _320 = r0;
    _320.x = mad(r1.xyz.z, _310.z, mad(r1.xyz.y, _310.y, r1.xyz.x * _310.x));
    r0 = _320;
    float3 _331 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _341 = r0;
    _341.z = mad(r1.xyz.z, _331.z, mad(r1.xyz.y, _331.y, r1.xyz.x * _331.x));
    r0 = _341;
    float3 _352 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _362 = r0;
    _362.y = mad(r1.xyz.z, _352.z, mad(r1.xyz.y, _352.y, r1.xyz.x * _352.x));
    r0 = _362;
    float4 _371 = r0;
    _371.y = r0.y * cb5_m[5].y;
    r0 = _371;
    float2 _381 = r0.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_381.x, r1.y, _381.y, r1.w);
    float4 _386 = r0;
    _386.x = asfloat(3212836864u);
    r0 = _386;
    float4 _393 = r1;
    _393.y = r0.y * r0.x;
    r1 = _393;
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _404 = o3;
    _404.w = r1.z;
    o3 = _404;
    float3 _413 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _426 = r0;
    _426.x = mad(_413.z, shader_in[1].xyz.z, mad(_413.y, shader_in[1].xyz.y, _413.x * shader_in[1].xyz.x));
    r0 = _426;
    float3 _435 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _448 = r0;
    _448.y = mad(_435.z, shader_in[1].xyz.z, mad(_435.y, shader_in[1].xyz.y, _435.x * shader_in[1].xyz.x));
    r0 = _448;
    float3 _457 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _470 = r0;
    _470.z = mad(_457.z, shader_in[1].xyz.z, mad(_457.y, shader_in[1].xyz.y, _457.x * shader_in[1].xyz.x));
    r0 = _470;
    float4 _485 = r0;
    _485.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _485;
    float4 _490 = r0;
    _490.w = rsqrt(r0.w);
    r0 = _490;
    float3 _496 = r0.www * r0.xyz;
    r0 = float4(_496.x, _496.y, _496.z, r0.w);
    float3 _506 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _518 = o2;
    _518.z = mad(_506.z, r0.xyz.z, mad(_506.y, r0.xyz.y, _506.x * r0.xyz.x));
    o2 = _518;
    float3 _532 = shader_in[1].yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r0 = float4(_532.x, _532.y, _532.z, r0.w);
    float3 _551 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * shader_in[1].zxy) + (-r0.xyz);
    r0 = float4(_551.x, _551.y, _551.z, r0.w);
    float4 _567 = r0;
    _567.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _567;
    float4 _572 = r0;
    _572.w = rsqrt(r0.w);
    r0 = _572;
    float3 _578 = r0.www * r0.xyz;
    r0 = float4(_578.x, _578.y, _578.z, r0.w);
    float3 _586 = r0.yzx * shader_in[1].zxy;
    r1 = float4(_586.x, _586.y, _586.z, r1.w);
    float3 _598 = (shader_in[1].yzx * r0.zxy) + (-r1.xyz);
    r1 = float4(_598.x, _598.y, _598.z, r1.w);
    float4 _614 = r0;
    _614.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _614;
    float4 _619 = r0;
    _619.w = rsqrt(r0.w);
    r0 = _619;
    float3 _625 = r0.www * r1.xyz;
    r1 = float4(_625.x, _625.y, _625.z, r1.w);
    float3 _635 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _648 = r2;
    _648.x = mad(_635.z, r1.xyz.z, mad(_635.y, r1.xyz.y, _635.x * r1.xyz.x));
    r2 = _648;
    float3 _657 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _669 = r2;
    _669.y = mad(_657.z, r1.xyz.z, mad(_657.y, r1.xyz.y, _657.x * r1.xyz.x));
    r2 = _669;
    float3 _678 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _690 = r2;
    _690.z = mad(_678.z, r1.xyz.z, mad(_678.y, r1.xyz.y, _678.x * r1.xyz.x));
    r2 = _690;
    float3 _699 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _711 = o3;
    _711.x = mad(_699.z, r1.xyz.z, mad(_699.y, r1.xyz.y, _699.x * r1.xyz.x));
    o3 = _711;
    float4 _726 = r0;
    _726.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _726;
    float4 _731 = r0;
    _731.w = rsqrt(r0.w);
    r0 = _731;
    float3 _737 = r0.www * r2.xyz;
    r1 = float4(_737.x, _737.y, _737.z, r1.w);
    float3 _747 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _759 = o2;
    _759.x = mad(_747.z, r1.xyz.z, mad(_747.y, r1.xyz.y, _747.x * r1.xyz.x));
    o2 = _759;
    float3 _768 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _780 = o2;
    _780.y = mad(_768.z, r0.xyz.z, mad(_768.y, r0.xyz.y, _768.x * r0.xyz.x));
    o2 = _780;
    float3 _789 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _801 = o3;
    _801.y = mad(_789.z, r0.xyz.z, mad(_789.y, r0.xyz.y, _789.x * r0.xyz.x));
    o3 = _801;
    float3 _810 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _823 = o3;
    _823.z = mad(_810.z, shader_in[1].xyz.z, mad(_810.y, shader_in[1].xyz.y, _810.x * shader_in[1].xyz.x));
    o3 = _823;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
}

void vert_main()
{
    float2 _838 = asfloat(v0);
    shader_in[0] = float4(_838.x, _838.y, shader_in[0].z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
