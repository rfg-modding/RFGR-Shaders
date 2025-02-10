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
static float3 v0;
static float3 v1;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
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
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _59 = r0;
    _59.w = asfloat(1065353216u);
    r0 = _59;
    float4 _74 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _89 = r1;
    _89.x = mad(_74.w, r0.w, mad(_74.z, r0.z, mad(_74.y, r0.y, _74.x * r0.x)));
    r1 = _89;
    float4 _101 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _115 = r1;
    _115.y = mad(_101.w, r0.w, mad(_101.z, r0.z, mad(_101.y, r0.y, _101.x * r0.x)));
    r1 = _115;
    float4 _127 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _141 = r1;
    _141.z = mad(_127.w, r0.w, mad(_127.z, r0.z, mad(_127.y, r0.y, _127.x * r0.x)));
    r1 = _141;
    float4 _144 = r1;
    _144.w = asfloat(1065353216u);
    r1 = _144;
    float4 _155 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _169 = o0;
    _169.x = mad(_155.w, r1.w, mad(_155.z, r1.z, mad(_155.y, r1.y, _155.x * r1.x)));
    o0 = _169;
    float4 _180 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _194 = o0;
    _194.y = mad(_180.w, r1.w, mad(_180.z, r1.z, mad(_180.y, r1.y, _180.x * r1.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _219 = o0;
    _219.z = mad(_205.w, r1.w, mad(_205.z, r1.z, mad(_205.y, r1.y, _205.x * r1.x)));
    o0 = _219;
    float4 _231 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _245 = o0;
    _245.w = mad(_231.w, r1.w, mad(_231.z, r1.z, mad(_231.y, r1.y, _231.x * r1.x)));
    o0 = _245;
    float4 _249 = r0;
    _249.x = asfloat(3212836864u);
    r0 = _249;
    float3 _263 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(r0.x, _263.x, _263.y, _263.z);
    float3 _275 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _285 = r1;
    _285.x = mad(r0.yzw.z, _275.z, mad(r0.yzw.y, _275.y, r0.yzw.x * _275.x));
    r1 = _285;
    float4 _294 = r1;
    _294.x = r1.x * cb5_m[5].y;
    r1 = _294;
    float4 _301 = r1;
    _301.y = r0.x * r1.x;
    r1 = _301;
    float3 _312 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _323 = r2;
    _323.x = mad(r0.yzw.z, _312.z, mad(r0.yzw.y, _312.y, r0.yzw.x * _312.x));
    r2 = _323;
    float3 _334 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _344 = r2;
    _344.z = mad(r0.yzw.z, _334.z, mad(r0.yzw.y, _334.y, r0.yzw.x * _334.x));
    r2 = _344;
    float2 _354 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_354.x, r1.y, _354.y, r1.w);
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _366 = o3;
    _366.w = r1.z;
    o3 = _366;
    float3 _378 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_378.x, _378.y, _378.z, r0.w);
    float3 _392 = r0.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r1 = float4(_392.x, _392.y, _392.z, r1.w);
    float3 _410 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r0.xyz) + (-r1.xyz);
    r1 = float4(_410.x, _410.y, _410.z, r1.w);
    float4 _426 = r0;
    _426.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _426;
    float4 _431 = r0;
    _431.w = rsqrt(r0.w);
    r0 = _431;
    float3 _437 = r0.www * r1.xyz;
    r1 = float4(_437.x, _437.y, _437.z, r1.w);
    float3 _444 = r0.zxy * r1.xyz;
    r2 = float4(_444.x, _444.y, _444.z, r2.w);
    float3 _455 = (r0.yzx * r1.yzx) + (-r2.xyz);
    r1 = float4(_455.x, _455.y, _455.z, r1.w);
    float4 _471 = r0;
    _471.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _471;
    float4 _476 = r0;
    _476.w = rsqrt(r0.w);
    r0 = _476;
    float3 _482 = r0.www * r1.xyz;
    r1 = float4(_482.x, _482.y, _482.z, r1.w);
    float3 _492 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _504 = r2;
    _504.x = mad(_492.z, r1.xyz.z, mad(_492.y, r1.xyz.y, _492.x * r1.xyz.x));
    r2 = _504;
    float3 _513 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _525 = r2;
    _525.y = mad(_513.z, r1.xyz.z, mad(_513.y, r1.xyz.y, _513.x * r1.xyz.x));
    r2 = _525;
    float3 _534 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _546 = r2;
    _546.z = mad(_534.z, r1.xyz.z, mad(_534.y, r1.xyz.y, _534.x * r1.xyz.x));
    r2 = _546;
    float3 _555 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _567 = o3;
    _567.x = mad(_555.z, r1.xyz.z, mad(_555.y, r1.xyz.y, _555.x * r1.xyz.x));
    o3 = _567;
    float4 _582 = r0;
    _582.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _582;
    float4 _587 = r0;
    _587.w = rsqrt(r0.w);
    r0 = _587;
    float3 _593 = r0.www * r2.xyz;
    r1 = float4(_593.x, _593.y, _593.z, r1.w);
    float3 _603 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _615 = r2;
    _615.x = mad(_603.z, r0.xyz.z, mad(_603.y, r0.xyz.y, _603.x * r0.xyz.x));
    r2 = _615;
    float3 _624 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _636 = r2;
    _636.y = mad(_624.z, r0.xyz.z, mad(_624.y, r0.xyz.y, _624.x * r0.xyz.x));
    r2 = _636;
    float3 _645 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _657 = r2;
    _657.z = mad(_645.z, r0.xyz.z, mad(_645.y, r0.xyz.y, _645.x * r0.xyz.x));
    r2 = _657;
    float3 _666 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _678 = o3;
    _678.z = mad(_666.z, r0.xyz.z, mad(_666.y, r0.xyz.y, _666.x * r0.xyz.x));
    o3 = _678;
    float4 _693 = r0;
    _693.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _693;
    float4 _698 = r0;
    _698.x = rsqrt(r0.x);
    r0 = _698;
    float3 _704 = r0.xxx * r2.xyz;
    r0 = float4(_704.x, _704.y, _704.z, r0.w);
    float3 _711 = r1.yzx * r0.zxy;
    r2 = float4(_711.x, _711.y, _711.z, r2.w);
    float3 _722 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_722.x, _722.y, _722.z, r2.w);
    float3 _732 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _744 = o2;
    _744.x = mad(_732.z, r1.xyz.z, mad(_732.y, r1.xyz.y, _732.x * r1.xyz.x));
    o2 = _744;
    float3 _753 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _765 = o2;
    _765.z = mad(_753.z, r0.xyz.z, mad(_753.y, r0.xyz.y, _753.x * r0.xyz.x));
    o2 = _765;
    float3 _774 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _777 = -r2.xyz;
    float3 _787 = o2;
    _787.y = mad(_774.z, _777.z, mad(_774.y, _777.y, _774.x * _777.x));
    o2 = _787;
    float3 _796 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _808 = o3;
    _808.y = mad(_796.z, r2.xyz.z, mad(_796.y, r2.xyz.y, _796.x * r2.xyz.x));
    o3 = _808;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o5 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
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
