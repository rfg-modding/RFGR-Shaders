cbuffer cb0_t : register(b160)
{
    float4 cb0_m[14] : packoffset(c0);
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
static float4 r3;
static float4 r4;

void vs_main()
{
    float4 _52 = r0;
    _52.w = asfloat(1065353216u);
    r0 = _52;
    r1 = float4(shader_in[0].xyz.x, shader_in[0].xyz.y, shader_in[0].xyz.z, r1.w);
    float4 _63 = r1;
    _63.w = asfloat(1065353216u);
    r1 = _63;
    float4 _78 = float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float4 _92 = r0;
    _92.x = mad(_78.w, r1.w, mad(_78.z, r1.z, mad(_78.y, r1.y, _78.x * r1.x)));
    r0 = _92;
    float4 _104 = float4(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z, cb6_m[1].w);
    float4 _118 = r0;
    _118.y = mad(_104.w, r1.w, mad(_104.z, r1.z, mad(_104.y, r1.y, _104.x * r1.x)));
    r0 = _118;
    float4 _130 = float4(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z, cb6_m[2].w);
    float4 _144 = r0;
    _144.z = mad(_130.w, r1.w, mad(_130.z, r1.z, mad(_130.y, r1.y, _130.x * r1.x)));
    r0 = _144;
    float4 _155 = float4(cb0_m[0].x, cb0_m[0].y, cb0_m[0].z, cb0_m[0].w);
    float4 _169 = o0;
    _169.x = mad(_155.w, r0.w, mad(_155.z, r0.z, mad(_155.y, r0.y, _155.x * r0.x)));
    o0 = _169;
    float4 _180 = float4(cb0_m[1].x, cb0_m[1].y, cb0_m[1].z, cb0_m[1].w);
    float4 _194 = o0;
    _194.y = mad(_180.w, r0.w, mad(_180.z, r0.z, mad(_180.y, r0.y, _180.x * r0.x)));
    o0 = _194;
    float4 _205 = float4(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z, cb0_m[2].w);
    float4 _219 = o0;
    _219.z = mad(_205.w, r0.w, mad(_205.z, r0.z, mad(_205.y, r0.y, _205.x * r0.x)));
    o0 = _219;
    float4 _231 = float4(cb0_m[3].x, cb0_m[3].y, cb0_m[3].z, cb0_m[3].w);
    float4 _245 = o0;
    _245.w = mad(_231.w, r0.w, mad(_231.z, r0.z, mad(_231.y, r0.y, _231.x * r0.x)));
    o0 = _245;
    float3 _259 = r0.xyz + (-float3(cb0_m[11].x, cb0_m[11].y, cb0_m[11].z));
    r0 = float4(_259.x, _259.y, _259.z, r0.w);
    float4 _264 = r0;
    _264.w = asfloat(3212836864u);
    r0 = _264;
    float3 _278 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r1 = float4(_278.x, _278.y, _278.z, r1.w);
    float3 _290 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _300 = r1;
    _300.w = mad(r1.xyz.z, _290.z, mad(r1.xyz.y, _290.y, r1.xyz.x * _290.x));
    r1 = _300;
    float4 _309 = r1;
    _309.w = r1.w * cb5_m[5].y;
    r1 = _309;
    float4 _317 = r2;
    _317.y = r0.w * r1.w;
    r2 = _317;
    float3 _328 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _339 = r3;
    _339.x = mad(r1.xyz.z, _328.z, mad(r1.xyz.y, _328.y, r1.xyz.x * _328.x));
    r3 = _339;
    float3 _350 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _360 = r3;
    _360.z = mad(r1.xyz.z, _350.z, mad(r1.xyz.y, _350.y, r1.xyz.x * _350.x));
    r3 = _360;
    float2 _370 = r3.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r2 = float4(_370.x, r2.y, _370.y, r2.w);
    o1 = r2.xy + asfloat(uint2(1056964608u, 1056964608u));
    float4 _382 = o3;
    _382.w = r2.z;
    o3 = _382;
    float3 _394 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(_394.x, _394.y, _394.z, r1.w);
    float3 _408 = r1.yzx * (-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y));
    r2 = float4(_408.x, _408.y, _408.z, r2.w);
    float3 _426 = ((-float3(cb5_m[0].y, cb5_m[0].z, cb5_m[0].x)) * r1.zxy) + (-r2.xyz);
    r2 = float4(_426.x, _426.y, _426.z, r2.w);
    float4 _442 = r0;
    _442.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _442;
    float4 _447 = r0;
    _447.w = rsqrt(r0.w);
    r0 = _447;
    float3 _453 = r0.www * r2.xyz;
    r2 = float4(_453.x, _453.y, _453.z, r2.w);
    float3 _460 = r1.zxy * r2.yzx;
    r3 = float4(_460.x, _460.y, _460.z, r3.w);
    float3 _471 = (r1.yzx * r2.zxy) + (-r3.xyz);
    r3 = float4(_471.x, _471.y, _471.z, r3.w);
    float4 _487 = r0;
    _487.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _487;
    float4 _492 = r0;
    _492.w = rsqrt(r0.w);
    r0 = _492;
    float3 _498 = r0.www * r3.xyz;
    r3 = float4(_498.x, _498.y, _498.z, r3.w);
    float3 _508 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _521 = r4;
    _521.x = mad(_508.z, r3.xyz.z, mad(_508.y, r3.xyz.y, _508.x * r3.xyz.x));
    r4 = _521;
    float3 _530 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _542 = r4;
    _542.y = mad(_530.z, r3.xyz.z, mad(_530.y, r3.xyz.y, _530.x * r3.xyz.x));
    r4 = _542;
    float3 _551 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _563 = r4;
    _563.z = mad(_551.z, r3.xyz.z, mad(_551.y, r3.xyz.y, _551.x * r3.xyz.x));
    r4 = _563;
    float3 _572 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _584 = o3;
    _584.x = mad(_572.z, r3.xyz.z, mad(_572.y, r3.xyz.y, _572.x * r3.xyz.x));
    o3 = _584;
    float4 _599 = r0;
    _599.w = mad(r4.xyz.z, r4.xyz.z, mad(r4.xyz.y, r4.xyz.y, r4.xyz.x * r4.xyz.x));
    r0 = _599;
    float4 _604 = r0;
    _604.w = rsqrt(r0.w);
    r0 = _604;
    float3 _610 = r0.www * r4.xyz;
    r3 = float4(_610.x, _610.y, _610.z, r3.w);
    float3 _620 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _632 = o2;
    _632.x = mad(_620.z, r3.xyz.z, mad(_620.y, r3.xyz.y, _620.x * r3.xyz.x));
    o2 = _632;
    float4 _636 = o5;
    _636.x = r3.y;
    o5 = _636;
    float3 _645 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _657 = r3;
    _657.x = mad(_645.z, r1.xyz.z, mad(_645.y, r1.xyz.y, _645.x * r1.xyz.x));
    r3 = _657;
    float3 _666 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _678 = r3;
    _678.y = mad(_666.z, r1.xyz.z, mad(_666.y, r1.xyz.y, _666.x * r1.xyz.x));
    r3 = _678;
    float3 _687 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _699 = r3;
    _699.z = mad(_687.z, r1.xyz.z, mad(_687.y, r1.xyz.y, _687.x * r1.xyz.x));
    r3 = _699;
    float3 _708 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _720 = o3;
    _720.z = mad(_708.z, r1.xyz.z, mad(_708.y, r1.xyz.y, _708.x * r1.xyz.x));
    o3 = _720;
    float4 _735 = r0;
    _735.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _735;
    float4 _740 = r0;
    _740.w = rsqrt(r0.w);
    r0 = _740;
    float3 _746 = r0.www * r3.xyz;
    r1 = float4(_746.x, _746.y, _746.z, r1.w);
    float3 _756 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _768 = o2;
    _768.z = mad(_756.z, r1.xyz.z, mad(_756.y, r1.xyz.y, _756.x * r1.xyz.x));
    o2 = _768;
    float4 _772 = o5;
    _772.z = r1.y;
    o5 = _772;
    float3 _781 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _793 = o2;
    _793.y = mad(_781.z, r2.xyz.z, mad(_781.y, r2.xyz.y, _781.x * r2.xyz.x));
    o2 = _793;
    float3 _802 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _814 = o3;
    _814.y = mad(_802.z, r2.xyz.z, mad(_802.y, r2.xyz.y, _802.x * r2.xyz.x));
    o3 = _814;
    float4 _818 = o5;
    _818.y = r2.y;
    o5 = _818;
    o4 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    float4 _838 = r0;
    _838.w = r0.y * cb0_m[13].x;
    r0 = _838;
    float4 _845 = r1;
    _845.x = r0.w * asfloat(3216550459u);
    r1 = _845;
    float4 _850 = r1;
    _850.x = exp2(r1.x);
    r1 = _850;
    float4 _857 = r1;
    _857.x = (-r1.x) + asfloat(1065353216u);
    r1 = _857;
    float4 _864 = r0;
    _864.w = r1.x / r0.w;
    r0 = _864;
    float4 _876 = r1;
    _876.x = asfloat((asfloat(1008981770u) < abs(r0.y)) ? 4294967295u : 0u);
    r1 = _876;
    float4 _891 = r0;
    _891.x = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _891;
    float4 _896 = r0;
    _896.x = sqrt(r0.x);
    r0 = _896;
    float4 _904 = r0;
    _904.x = r0.x * cb0_m[13].y;
    r0 = _904;
    float4 _914 = r0;
    _914.y = (asuint(r1.x) != 0u) ? r0.w : asfloat(1065353216u);
    r0 = _914;
    float4 _926 = r0;
    _926.x = (r0.y * r0.x) + (-cb0_m[13].w);
    r0 = _926;
    float4 _932 = r0;
    _932.x = exp2(-r0.x);
    r0 = _932;
    float4 _938 = r0;
    _938.x = min(r0.x, asfloat(1065353216u));
    r0 = _938;
    float4 _945 = o5;
    _945.w = (-r0.x) + asfloat(1065353216u);
    o5 = _945;
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
