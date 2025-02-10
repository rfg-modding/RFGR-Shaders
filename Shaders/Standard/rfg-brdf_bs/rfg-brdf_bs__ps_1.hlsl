cbuffer cb0_t : register(b0)
{
    float4 cb0_m[7] : packoffset(c0);
};

cbuffer cb1_t : register(b1)
{
    float4 cb1_m[3] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[1] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[9] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt1s1;
uniform sampler2D SPIRV_Cross_Combinedt3s3;
uniform sampler2D SPIRV_Cross_Combinedt4s4;
uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt15s15;
uniform sampler2D SPIRV_Cross_Combinedt0s0;

static float4 gl_FragCoord;
static float2 v1;
static float3 v2;
static float3 v3;
static float4 v4;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float4 v4 : TEXCOORD4;
    float4 gl_FragCoord : VPOS;
};

static float4 shader_in[5];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float3 _85 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _85.x, _85.y, _85.z);
    float4 _94 = r0;
    _94.y = r0.y + r0.y;
    r0 = _94;
    float4 _101 = r1;
    _101.x = r1.w * r1.y;
    r1 = _101;
    float4 _113 = r0;
    _113.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _113;
    float4 _117 = r0;
    _117.x = r1.x;
    r0 = _117;
    float4 _125 = r0;
    _125.w = (-r0.w) + asfloat(1065353216u);
    r0 = _125;
    float4 _132 = r0;
    _132.w = max(r0.w, asfloat(0u));
    r0 = _132;
    float4 _137 = r0;
    _137.z = sqrt(r0.w);
    r0 = _137;
    float3 _144 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_144.x, _144.y, _144.z, r0.w);
    float3 _161 = (cb2_m[7].z.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_161.x, _161.y, _161.z, r0.w);
    float4 _177 = r0;
    _177.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _177;
    float4 _182 = r0;
    _182.w = rsqrt(r0.w);
    r0 = _182;
    float3 _188 = r0.www * r0.xyz;
    r0 = float4(_188.x, _188.y, _188.z, r0.w);
    float4 _207 = r0;
    _207.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _207;
    float4 _212 = r0;
    _212.w = rsqrt(r0.w);
    r0 = _212;
    float4 _230 = r1;
    _230.x = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r1 = _230;
    float4 _235 = r1;
    _235.y = rsqrt(r1.x);
    r1 = _235;
    float4 _240 = r1;
    _240.x = sqrt(r1.x);
    r1 = _240;
    float4 _256 = r1;
    _256.x = clamp(((-r1.x) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r1 = _256;
    float3 _263 = r1.yyy * shader_in[2].xyz;
    r1 = float4(r1.x, _263.x, _263.y, _263.z);
    float3 _274 = (shader_in[3].xyz * r0.www) + r1.yzw;
    r2 = float4(_274.x, _274.y, _274.z, r2.w);
    float3 _283 = r0.www * shader_in[3].xyz;
    r3 = float4(_283.x, _283.y, _283.z, r3.w);
    float4 _300 = r0;
    _300.w = mad(r0.xyz.z, r3.xyz.z, mad(r0.xyz.y, r3.xyz.y, r0.xyz.x * r3.xyz.x));
    r0 = _300;
    float4 _306 = r0;
    _306.w = max(r0.w, asfloat(0u));
    r0 = _306;
    float4 _313 = r3;
    _313.y = (-r0.w) + asfloat(1065353216u);
    r3 = _313;
    float4 _328 = r0;
    _328.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _328;
    float4 _333 = r0;
    _333.w = rsqrt(r0.w);
    r0 = _333;
    float3 _339 = r0.www * r2.xyz;
    r2 = float4(_339.x, _339.y, _339.z, r2.w);
    float4 _355 = r0;
    _355.w = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r0 = _355;
    float4 _370 = r0;
    _370.x = mad(r1.yzw.z, r0.xyz.z, mad(r1.yzw.y, r0.xyz.y, r1.yzw.x * r0.xyz.x));
    r0 = _370;
    float3 _374 = -r1.yzw;
    float4 _388 = r0;
    _388.y = mad(_374.z, shader_in[4].xyz.z, mad(_374.y, shader_in[4].xyz.y, _374.x * shader_in[4].xyz.x));
    r0 = _388;
    float4 _396 = r0;
    _396.y = min(r0.y, cb1_m[2].x);
    r0 = _396;
    float4 _405 = r0;
    _405.y = r0.y + (-cb1_m[2].y);
    r0 = _405;
    float4 _411 = r0;
    _411.y = max(r0.y, asfloat(0u));
    r0 = _411;
    float4 _419 = r0;
    _419.y = r0.y * cb1_m[2].z;
    r0 = _419;
    float4 _425 = r0;
    _425.z = max(r0.w, asfloat(0u));
    r0 = _425;
    float4 _432 = r2;
    _432.y = (-r0.z) + asfloat(1065353216u);
    r2 = _432;
    float4 _438 = r2;
    _438.x = max(r0.x, asfloat(0u));
    r2 = _438;
    float4 _447 = r3;
    _447.x = (r0.x * asfloat(1056964608u)) + asfloat(1056964608u);
    r3 = _447;
    r3 = tex2D(SPIRV_Cross_Combinedt3s3, r3.xyxx.xy);
    r2 = tex2D(SPIRV_Cross_Combinedt4s4, r2.xyxx.xy);
    float4 _472 = r0;
    _472.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r0 = _472;
    float4 _482 = r0;
    _482.x = (asuint(r0.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _482;
    float4 _489 = r0;
    _489.x = r0.x * r1.x;
    r0 = _489;
    float3 _495 = r0.xxx * r2.xyz;
    r0 = float4(r0.x, _495.x, _495.y, _495.z);
    float3 _502 = r0.xxx * r3.xyz;
    r1 = float4(_502.x, _502.y, _502.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _517 = r0.yzw * r2.xyz;
    r0 = float4(_517.x, _517.y, _517.z, r0.w);
    float3 _530 = r0.xxx * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r2 = float4(_530.x, _530.y, _530.z, r2.w);
    float3 _543 = r0.yyy * float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r3 = float4(_543.x, _543.y, _543.z, r3.w);
    float3 _560 = ((-float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z)) * r0.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r0 = float4(_560.x, _560.y, r0.z, _560.z);
    float3 _570 = (r2.xyz * r0.xyw) + r3.xyz;
    r0 = float4(_570.x, _570.y, r0.z, _570.z);
    float3 _584 = r0.zzz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r2 = float4(_584.x, _584.y, _584.z, r2.w);
    float3 _600 = ((-float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z)) * r0.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_600.x, _600.y, _600.z, r3.w);
    float3 _610 = (r0.xyw * r3.xyz) + r2.xyz;
    r0 = float4(_610.x, _610.y, _610.z, r0.w);
    float3 _620 = r0.xyz * cb2_m[8].y.xxx;
    r0 = float4(_620.x, _620.y, _620.z, r0.w);
    float2 _633 = shader_in[0].xy * float2(cb0_m[6].z, cb0_m[6].w);
    r2 = float4(_633.x, _633.y, r2.z, r2.w);
    r2 = tex2D(SPIRV_Cross_Combinedt15s15, r2.xyxx.xy);
    float4 _648 = r0;
    _648.w = max(r2.y, asfloat(1028443341u));
    r0 = _648;
    float3 _654 = r0.www * r0.xyz;
    r0 = float4(_654.x, _654.y, _654.z, r0.w);
    float3 _667 = r1.xxx * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r2 = float4(_667.x, r2.y, _667.y, _667.z);
    float3 _680 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r3 = float4(_680.x, _680.y, _680.z, r3.w);
    float3 _696 = ((-float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z)) * r1.yyy) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r1 = float4(_696.x, _696.y, r1.z, _696.z);
    float3 _706 = (r2.xzw * r1.xyw) + r3.xyz;
    r1 = float4(_706.x, _706.y, r1.z, _706.z);
    float3 _719 = r1.zzz * float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z);
    r2 = float4(_719.x, r2.y, _719.y, _719.z);
    float3 _735 = ((-float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z)) * r1.zzz) + asfloat(uint3(1065353216u, 1065353216u, 1065353216u));
    r3 = float4(_735.x, _735.y, _735.z, r3.w);
    float3 _745 = (r1.xyw * r3.xyz) + r2.xzw;
    r1 = float4(_745.x, _745.y, _745.z, r1.w);
    r3 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float3 _766 = r3.xyz * float3(cb2_m[6].x, cb2_m[6].y, cb2_m[6].z);
    r2 = float4(_766.x, r2.y, _766.y, _766.z);
    float3 _773 = r1.xyz * r2.xzw;
    r1 = float4(_773.x, _773.y, _773.z, r1.w);
    float3 _783 = (r1.xyz * r2.yyy) + r0.xyz;
    r0 = float4(_783.x, _783.y, _783.z, r0.w);
    float3 _796 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_796.x, _796.y, _796.z, r0.w);
    float4 _805 = r0;
    _805.w = (-shader_in[4].w) + asfloat(1065353216u);
    r0 = _805;
    float3 _811 = r0.xyz * r0.www;
    r0 = float4(_811.x, _811.y, _811.z, r0.w);
    float4 _819 = r1;
    _819.x = (-r3.w) + asfloat(1065353216u);
    r1 = _819;
    float4 _830 = r0;
    _830.w = (cb2_m[7].w * r1.x) + r3.w;
    r0 = _830;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    shader_in[4] = v4;
    float4 _860 = gl_FragCoord;
    _860.w = 1.0f / _860.w;
    shader_in[0] = float4(_860.xy.x, _860.xy.y, shader_in[0].z, shader_in[0].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord + float4(0.5f, 0.5f, 0.0f, 0.0f);
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    v4 = stage_input.v4;
    frag_main();
}
