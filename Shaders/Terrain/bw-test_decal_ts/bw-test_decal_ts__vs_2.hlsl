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
static int v2;

struct SPIRV_Cross_Input
{
    float3 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float v2 : TEXCOORD2;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : POSITION;
    float gl_PointSize : PSIZE;
};

static float4 shader_in[3];
static float4 o0;
static float4 o1;
static float4 o2;
static float4 o3;
static float4 o4;
static float4 o5;
static float4 r0;
static float4 r1;
static float4 r2;

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
    float3 _257 = (shader_in[1].xyz * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r0 = float4(_257.x, _257.y, _257.z, r0.w);
    float3 _271 = r0.zxy * (-float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z));
    r1 = float4(_271.x, _271.y, _271.z, r1.w);
    float3 _289 = ((-float3(cb5_m[0].z, cb5_m[0].x, cb5_m[0].y)) * r0.xyz) + (-r1.xyz);
    r1 = float4(_289.x, _289.y, _289.z, r1.w);
    float4 _305 = r0;
    _305.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _305;
    float4 _310 = r0;
    _310.w = rsqrt(r0.w);
    r0 = _310;
    float3 _316 = r0.www * r1.xyz;
    r1 = float4(_316.x, _316.y, _316.z, r1.w);
    float3 _323 = r0.zxy * r1.xyz;
    r2 = float4(_323.x, _323.y, _323.z, r2.w);
    float3 _335 = (r0.yzx * r1.yzx) + (-r2.xyz);
    r1 = float4(_335.x, _335.y, _335.z, r1.w);
    float4 _351 = r0;
    _351.w = mad(r1.xyz.z, r1.xyz.z, mad(r1.xyz.y, r1.xyz.y, r1.xyz.x * r1.xyz.x));
    r0 = _351;
    float4 _356 = r0;
    _356.w = rsqrt(r0.w);
    r0 = _356;
    float3 _362 = r0.www * r1.xyz;
    r1 = float4(_362.x, _362.y, _362.z, r1.w);
    float3 _372 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _384 = r2;
    _384.x = mad(_372.z, r1.xyz.z, mad(_372.y, r1.xyz.y, _372.x * r1.xyz.x));
    r2 = _384;
    float3 _393 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _405 = r2;
    _405.y = mad(_393.z, r1.xyz.z, mad(_393.y, r1.xyz.y, _393.x * r1.xyz.x));
    r2 = _405;
    float3 _414 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _426 = r2;
    _426.z = mad(_414.z, r1.xyz.z, mad(_414.y, r1.xyz.y, _414.x * r1.xyz.x));
    r2 = _426;
    float3 _435 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _447 = o1;
    _447.x = mad(_435.z, r1.xyz.z, mad(_435.y, r1.xyz.y, _435.x * r1.xyz.x));
    o1 = _447;
    float4 _462 = r0;
    _462.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _462;
    float4 _467 = r0;
    _467.w = rsqrt(r0.w);
    r0 = _467;
    float3 _473 = r0.www * r2.xyz;
    r1 = float4(_473.x, _473.y, _473.z, r1.w);
    float3 _483 = float3(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z);
    float4 _495 = r2;
    _495.x = mad(_483.z, r0.xyz.z, mad(_483.y, r0.xyz.y, _483.x * r0.xyz.x));
    r2 = _495;
    float3 _504 = float3(cb6_m[1].x, cb6_m[1].y, cb6_m[1].z);
    float4 _516 = r2;
    _516.y = mad(_504.z, r0.xyz.z, mad(_504.y, r0.xyz.y, _504.x * r0.xyz.x));
    r2 = _516;
    float3 _525 = float3(cb6_m[2].x, cb6_m[2].y, cb6_m[2].z);
    float4 _537 = r2;
    _537.z = mad(_525.z, r0.xyz.z, mad(_525.y, r0.xyz.y, _525.x * r0.xyz.x));
    r2 = _537;
    float3 _546 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _558 = o1;
    _558.z = mad(_546.z, r0.xyz.z, mad(_546.y, r0.xyz.y, _546.x * r0.xyz.x));
    o1 = _558;
    float4 _573 = r0;
    _573.x = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _573;
    float4 _578 = r0;
    _578.x = rsqrt(r0.x);
    r0 = _578;
    float3 _584 = r0.xxx * r2.xyz;
    r0 = float4(_584.x, _584.y, _584.z, r0.w);
    float3 _591 = r1.yzx * r0.zxy;
    r2 = float4(_591.x, _591.y, _591.z, r2.w);
    float3 _602 = (r0.yzx * r1.zxy) + (-r2.xyz);
    r2 = float4(_602.x, _602.y, _602.z, r2.w);
    float3 _612 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _624 = o4;
    _624.x = mad(_612.z, r1.xyz.z, mad(_612.y, r1.xyz.y, _612.x * r1.xyz.x));
    o4 = _624;
    float3 _633 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float4 _645 = o4;
    _645.z = mad(_633.z, r0.xyz.z, mad(_633.y, r0.xyz.y, _633.x * r0.xyz.x));
    o4 = _645;
    float3 _654 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _666 = o1;
    _666.y = mad(_654.z, r2.xyz.z, mad(_654.y, r2.xyz.y, _654.x * r2.xyz.x));
    o1 = _666;
    float3 _675 = float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    float3 _678 = -r2.xyz;
    float4 _688 = o4;
    _688.y = mad(_675.z, _678.z, mad(_675.y, _678.y, _675.x * _678.x));
    o4 = _688;
    float3 _702 = shader_in[0].xyz + (-float3(cb5_m[3].x, cb5_m[3].y, cb5_m[3].z));
    r0 = float4(_702.x, _702.y, _702.z, r0.w);
    float3 _714 = float3(cb5_m[0].x, cb5_m[0].y, cb5_m[0].z);
    float4 _724 = r1;
    _724.x = mad(r0.xyz.z, _714.z, mad(r0.xyz.y, _714.y, r0.xyz.x * _714.x));
    r1 = _724;
    float3 _735 = float3(cb5_m[2].x, cb5_m[2].y, cb5_m[2].z);
    float4 _745 = r1;
    _745.z = mad(r0.xyz.z, _735.z, mad(r0.xyz.y, _735.y, r0.xyz.x * _735.x));
    r1 = _745;
    float3 _756 = float3(cb5_m[1].x, cb5_m[1].y, cb5_m[1].z);
    float4 _766 = r0;
    _766.x = mad(r0.xyz.z, _756.z, mad(r0.xyz.y, _756.y, r0.xyz.x * _756.x));
    r0 = _766;
    float4 _775 = r0;
    _775.x = r0.x * cb5_m[5].y;
    r0 = _775;
    float2 _786 = r1.xz * float2(cb5_m[5].x, cb5_m[5].z);
    r1 = float4(_786.x, r1.y, _786.y, r1.w);
    float4 _791 = o1;
    _791.w = r1.z;
    o1 = _791;
    o2 = float4(cb5_m[6].x, cb5_m[6].y, cb5_m[6].z, cb5_m[6].w);
    o3 = float4(cb5_m[4].x, cb5_m[4].y, cb5_m[4].z, cb5_m[4].w);
    float4 _820 = r0;
    _820.y = float(asint(shader_in[2].x));
    r0 = _820;
    float4 _827 = o4;
    _827.w = r0.y * asfloat(981467136u);
    o4 = _827;
    float4 _830 = r0;
    _830.y = asfloat(3212836864u);
    r0 = _830;
    float4 _837 = r1;
    _837.y = r0.x * r0.y;
    r1 = _837;
    float2 _845 = r1.xy + asfloat(uint2(1056964608u, 1056964608u));
    r0 = float4(_845.x, _845.y, r0.z, r0.w);
    float2 _852 = r0.xy * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(_852.x, _852.y, o5.z, o5.w);
    float2 _860 = cb5_m[5].w.xx * asfloat(uint2(981467136u, 981467136u));
    o5 = float4(o5.x, o5.y, _860.x, _860.y);
}

void vert_main()
{
    shader_in[0] = float4(v0.x, v0.y, v0.z, shader_in[0].w);
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    float4 _875 = shader_in[2];
    _875.x = asfloat(v2);
    shader_in[2] = _875;
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
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.gl_PointSize = gl_PointSize;
    return stage_output;
}
