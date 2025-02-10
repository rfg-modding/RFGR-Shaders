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
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void vs_main()
{
    r0 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r0.w);
    float4 _58 = r0;
    _58.w = asfloat(1065353216u);
    r0 = _58;
    float4 _73 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _88 = r1;
    _88.x = mad(_73.w, r0.w, mad(_73.z, r0.z, mad(_73.y, r0.y, _73.x * r0.x)));
    r1 = _88;
    float4 _100 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _114 = r1;
    _114.y = mad(_100.w, r0.w, mad(_100.z, r0.z, mad(_100.y, r0.y, _100.x * r0.x)));
    r1 = _114;
    float4 _126 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _140 = r1;
    _140.z = mad(_126.w, r0.w, mad(_126.z, r0.z, mad(_126.y, r0.y, _126.x * r0.x)));
    r1 = _140;
    float4 _143 = r1;
    _143.w = asfloat(1065353216u);
    r1 = _143;
    float4 _154 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _168 = o0;
    _168.x = mad(_154.w, r1.w, mad(_154.z, r1.z, mad(_154.y, r1.y, _154.x * r1.x)));
    o0 = _168;
    float4 _179 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _193 = o0;
    _193.y = mad(_179.w, r1.w, mad(_179.z, r1.z, mad(_179.y, r1.y, _179.x * r1.x)));
    o0 = _193;
    float4 _204 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _218 = o0;
    _218.z = mad(_204.w, r1.w, mad(_204.z, r1.z, mad(_204.y, r1.y, _204.x * r1.x)));
    o0 = _218;
    float4 _230 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _244 = o0;
    _244.w = mad(_230.w, r1.w, mad(_230.z, r1.z, mad(_230.y, r1.y, _230.x * r1.x)));
    o0 = _244;
    float4 _248 = r0;
    _248.x = asfloat(3212836864u);
    r0 = _248;
    float3 _262 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(r0.x, _262.x, _262.y, _262.z);
    float3 _274 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _284 = r1;
    _284.x = mad(r0.yzw.z, _274.z, mad(r0.yzw.y, _274.y, r0.yzw.x * _274.x));
    r1 = _284;
    float4 _293 = r1;
    _293.x = r1.x * cb5_m[5].y;
    r1 = _293;
    float4 _300 = r1;
    _300.y = r0.x * r1.x;
    r1 = _300;
    float3 _311 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _322 = r2;
    _322.x = mad(r0.yzw.z, _311.z, mad(r0.yzw.y, _311.y, r0.yzw.x * _311.x));
    r2 = _322;
    float3 _333 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _343 = r2;
    _343.z = mad(r0.yzw.z, _333.z, mad(r0.yzw.y, _333.y, r0.yzw.x * _333.x));
    r2 = _343;
    float2 _353 = r2.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_353.x, r1.y, _353.y, r1.w);
    o1 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _365 = o3;
    _365.w = r1.z;
    o3 = _365;
    float3 _377 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_377.x, _377.y, _377.z, r0.w);
    float3 _391 = r0.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r1 = float4(_391.x, _391.y, _391.z, r1.w);
    float3 _409 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r0.zxy) + (-r1.xyz);
    r1 = float4(_409.x, _409.y, _409.z, r1.w);
    float4 _425 = r0;
    _425.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _425;
    float4 _430 = r0;
    _430.w = rsqrt(r0.w);
    r0 = _430;
    float3 _436 = r0.www * r1.xyz;
    r1 = float4(_436.x, _436.y, _436.z, r1.w);
    float3 _443 = r0.zxy * r1.yzx;
    r2 = float4(_443.x, _443.y, _443.z, r2.w);
    float3 _454 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_454.x, _454.y, _454.z, r2.w);
    float4 _470 = r0;
    _470.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _470;
    float4 _475 = r0;
    _475.w = rsqrt(r0.w);
    r0 = _475;
    float3 _481 = r0.www * r2.xyz;
    r2 = float4(_481.x, _481.y, _481.z, r2.w);
    float3 _491 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _504 = r3;
    _504.x = mad(_491.z, r2.xyz.z, mad(_491.y, r2.xyz.y, _491.x * r2.xyz.x));
    r3 = _504;
    float3 _513 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _525 = r3;
    _525.y = mad(_513.z, r2.xyz.z, mad(_513.y, r2.xyz.y, _513.x * r2.xyz.x));
    r3 = _525;
    float3 _534 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _546 = r3;
    _546.z = mad(_534.z, r2.xyz.z, mad(_534.y, r2.xyz.y, _534.x * r2.xyz.x));
    r3 = _546;
    float3 _555 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _567 = o3;
    _567.x = mad(_555.z, r2.xyz.z, mad(_555.y, r2.xyz.y, _555.x * r2.xyz.x));
    o3 = _567;
    float4 _582 = r0;
    _582.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _582;
    float4 _587 = r0;
    _587.w = rsqrt(r0.w);
    r0 = _587;
    float3 _593 = r0.www * r3.xyz;
    r2 = float4(_593.x, _593.y, _593.z, r2.w);
    float3 _603 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _615 = o2;
    _615.x = mad(_603.z, r2.xyz.z, mad(_603.y, r2.xyz.y, _603.x * r2.xyz.x));
    o2 = _615;
    float3 _624 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _636 = r2;
    _636.x = mad(_624.z, r0.xyz.z, mad(_624.y, r0.xyz.y, _624.x * r0.xyz.x));
    r2 = _636;
    float3 _645 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _657 = r2;
    _657.y = mad(_645.z, r0.xyz.z, mad(_645.y, r0.xyz.y, _645.x * r0.xyz.x));
    r2 = _657;
    float3 _666 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _678 = r2;
    _678.z = mad(_666.z, r0.xyz.z, mad(_666.y, r0.xyz.y, _666.x * r0.xyz.x));
    r2 = _678;
    float3 _687 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _699 = o3;
    _699.z = mad(_687.z, r0.xyz.z, mad(_687.y, r0.xyz.y, _687.x * r0.xyz.x));
    o3 = _699;
    float4 _714 = r0;
    _714.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _714;
    float4 _719 = r0;
    _719.x = rsqrt(r0.x);
    r0 = _719;
    float3 _725 = r0.xxx * r2.xyz;
    r0 = float4(_725.x, _725.y, _725.z, r0.w);
    float3 _735 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _747 = o2;
    _747.z = mad(_735.z, r0.xyz.z, mad(_735.y, r0.xyz.y, _735.x * r0.xyz.x));
    o2 = _747;
    float3 _756 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _768 = o2;
    _768.y = mad(_756.z, r1.xyz.z, mad(_756.y, r1.xyz.y, _756.x * r1.xyz.x));
    o2 = _768;
    float3 _777 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _789 = o3;
    _789.y = mad(_777.z, r1.xyz.z, mad(_777.y, r1.xyz.y, _777.x * r1.xyz.x));
    o3 = _789;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
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
