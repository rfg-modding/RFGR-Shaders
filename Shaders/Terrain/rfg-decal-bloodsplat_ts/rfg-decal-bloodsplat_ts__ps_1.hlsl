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
    float4 cb2_m[3] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v1;
static float3 v4;
static float4 v5;
static float4 v6;
static float3 v7;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float3 v4 : TEXCOORD4;
    float4 v5 : TEXCOORD5;
    float4 v6 : TEXCOORD6;
    float3 v7 : TEXCOORD7;
};

static float4 shader_in[8];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[7].xyxx.xy);
    float3 _71 = (r0.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r1 = float4(r1.x, _71.x, _71.y, _71.z);
    float4 _80 = r0;
    _80.y = r0.y + r0.y;
    r0 = _80;
    float4 _87 = r1;
    _87.x = r1.w * r1.y;
    r1 = _87;
    float4 _99 = r0;
    _99.w = mad(r1.xz.y, r1.xz.y, r1.xz.x * r1.xz.x);
    r0 = _99;
    float4 _103 = r0;
    _103.x = r1.x;
    r0 = _103;
    float4 _111 = r0;
    _111.w = (-r0.w) + asfloat(1065353216u);
    r0 = _111;
    float4 _118 = r0;
    _118.w = max(r0.w, asfloat(0u));
    r0 = _118;
    float4 _123 = r0;
    _123.z = sqrt(r0.w);
    r0 = _123;
    float3 _130 = r0.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r0 = float4(_130.x, _130.y, _130.z, r0.w);
    float3 _146 = (cb2_m[2].x.xxx * r0.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r0 = float4(_146.x, _146.y, _146.z, r0.w);
    float4 _162 = r0;
    _162.w = mad(r0.xyz.z, r0.xyz.z, mad(r0.xyz.y, r0.xyz.y, r0.xyz.x * r0.xyz.x));
    r0 = _162;
    float4 _167 = r0;
    _167.w = rsqrt(r0.w);
    r0 = _167;
    float3 _173 = r0.www * r0.xyz;
    r0 = float4(_173.x, _173.y, _173.z, r0.w);
    float4 _192 = r0;
    _192.w = mad(shader_in[6].xyz.z, shader_in[6].xyz.z, mad(shader_in[6].xyz.y, shader_in[6].xyz.y, shader_in[6].xyz.x * shader_in[6].xyz.x));
    r0 = _192;
    float4 _197 = r1;
    _197.x = rsqrt(r0.w);
    r1 = _197;
    float4 _202 = r0;
    _202.w = sqrt(r0.w);
    r0 = _202;
    float4 _219 = r0;
    _219.w = clamp(((-r0.w) * cb1_m[1].y) + cb1_m[1].x, 0.0f, 1.0f);
    r0 = _219;
    float3 _230 = (shader_in[6].xyz * r1.xxx) + shader_in[1].xyz;
    r1 = float4(r1.x, _230.x, _230.y, _230.z);
    float3 _238 = r1.xxx * shader_in[6].xyz;
    r2 = float4(_238.x, _238.y, _238.z, r2.w);
    float4 _255 = r1;
    _255.x = mad(r1.yzw.z, r1.yzw.z, mad(r1.yzw.y, r1.yzw.y, r1.yzw.x * r1.yzw.x));
    r1 = _255;
    float4 _260 = r1;
    _260.x = rsqrt(r1.x);
    r1 = _260;
    float3 _266 = r1.xxx * r1.yzw;
    r1 = float4(_266.x, _266.y, _266.z, r1.w);
    float4 _283 = r1;
    _283.x = clamp(mad(r0.xyz.z, r1.xyz.z, mad(r0.xyz.y, r1.xyz.y, r0.xyz.x * r1.xyz.x)), 0.0f, 1.0f);
    r1 = _283;
    float4 _290 = r1;
    _290.x = r1.x + asfloat(925353388u);
    r1 = _290;
    float4 _295 = r1;
    _295.x = log2(r1.x);
    r1 = _295;
    float4 _303 = r1;
    _303.x = r1.x * cb2_m[2].w;
    r1 = _303;
    float4 _308 = r1;
    _308.x = exp2(r1.x);
    r1 = _308;
    float4 _323 = r1;
    _323.y = mad(r0.xyz.z, r2.xyz.z, mad(r0.xyz.y, r2.xyz.y, r0.xyz.x * r2.xyz.x));
    r1 = _323;
    float3 _328 = -shader_in[1].xyz;
    float4 _340 = r0;
    _340.x = mad(_328.z, r0.xyz.z, mad(_328.y, r0.xyz.y, _328.x * r0.xyz.x));
    r0 = _340;
    float4 _346 = r0;
    _346.x = r0.x + asfloat(1065353216u);
    r0 = _346;
    float4 _352 = r0;
    _352.x = log2(abs(r0.x));
    r0 = _352;
    float4 _359 = r0;
    _359.x = r0.x * asfloat(1083179008u);
    r0 = _359;
    float4 _364 = r0;
    _364.x = exp2(r0.x);
    r0 = _364;
    float4 _370 = r0;
    _370.x = r0.x + asfloat(925353388u);
    r0 = _370;
    float4 _376 = r0;
    _376.x = min(r0.x, asfloat(1065353216u));
    r0 = _376;
    float3 _380 = -r2.xyz;
    float4 _394 = r0;
    _394.y = mad(_380.z, shader_in[5].xyz.z, mad(_380.y, shader_in[5].xyz.y, _380.x * shader_in[5].xyz.x));
    r0 = _394;
    float4 _402 = r0;
    _402.y = min(r0.y, cb1_m[2].x);
    r0 = _402;
    float4 _411 = r0;
    _411.y = r0.y + (-cb1_m[2].y);
    r0 = _411;
    float4 _417 = r0;
    _417.y = max(r0.y, asfloat(0u));
    r0 = _417;
    float4 _426 = r0;
    _426.y = r0.y * cb1_m[2].z;
    r0 = _426;
    float4 _436 = r0;
    _436.z = asfloat((asfloat(0u) >= r1.y) ? 4294967295u : 0u);
    r0 = _436;
    float4 _441 = r1;
    _441.y = clamp(r1.y, 0.0f, 1.0f);
    r1 = _441;
    float4 _450 = r0;
    _450.z = (asuint(r0.z) != 0u) ? asfloat(0u) : asfloat(1065353216u);
    r0 = _450;
    float4 _457 = r0;
    _457.z = r0.z * r1.x;
    r0 = _457;
    float4 _466 = r1;
    _466.x = asfloat((asfloat(0u) < cb1_m[2].w) ? 4294967295u : 0u);
    r1 = _466;
    float4 _476 = r0;
    _476.y = (asuint(r1.x) != 0u) ? r0.y : asfloat(1065353216u);
    r0 = _476;
    float4 _483 = r0;
    _483.y = r0.y * r0.w;
    r0 = _483;
    float4 _490 = r0;
    _490.w = max(r0.y, asfloat(1028443341u));
    r0 = _490;
    float4 _497 = r0;
    _497.y = r0.y * r1.y;
    r0 = _497;
    float4 _504 = r0;
    _504.z = r0.w * r0.z;
    r0 = _504;
    float4 _514 = r0;
    _514.w = clamp(shader_in[7].z / cb2_m[2].y, 0.0f, 1.0f);
    r0 = _514;
    float2 _527 = (r0.ww * asfloat(uint2(3202770534u, 3192704205u))) + asfloat(uint2(1064514355u, 1065353216u));
    r1 = float4(_527.x, _527.y, r1.z, r1.w);
    float4 _536 = r0;
    _536.w = (-r1.x) + r1.y;
    r0 = _536;
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[7].xyxx.xy);
    float4 _552 = r1;
    _552.x = (-r1.x) + r2.w;
    r1 = _552;
    float3 _564 = r2.xyz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z);
    r1 = float4(r1.x, _564.x, _564.y, _564.z);
    float4 _573 = r0;
    _573.w = clamp(r1.x / r0.w, 0.0f, 1.0f);
    r0 = _573;
    float4 _581 = r0;
    _581.w = r0.w * cb2_m[2].z;
    r0 = _581;
    float4 _588 = r0;
    _588.x = r0.x * r0.w;
    r0 = _588;
    float3 _600 = r0.xxx * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_600.x, _600.y, _600.z, r2.w);
    float3 _607 = r0.zzz * r2.xyz;
    r0 = float4(_607.x, r0.y, _607.y, _607.z);
    float3 _617 = (r0.yyy * r1.yzw) + r0.xzw;
    r0 = float4(_617.x, _617.y, _617.z, r0.w);
    float3 _630 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    r0 = float4(_630.x, _630.y, _630.z, r0.w);
    float3 _639 = r0.xyz * shader_in[4].xyz;
    r0 = float4(_639.x, _639.y, _639.z, r0.w);
    float4 _648 = r0;
    _648.w = (-shader_in[6].w) + asfloat(1065353216u);
    r0 = _648;
    float3 _654 = r0.xyz * r0.www;
    r0 = float4(_654.x, _654.y, _654.z, r0.w);
    float4 _660 = r0;
    _660.w = shader_in[5].w;
    r0 = _660;
    o0 = r0 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[4] = float4(v4.x, v4.y, v4.z, shader_in[4].w);
    shader_in[5] = v5;
    shader_in[6] = v6;
    shader_in[7] = float4(v7.x, v7.y, v7.z, shader_in[7].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v4 = stage_input.v4;
    v5 = stage_input.v5;
    v6 = stage_input.v6;
    v7 = stage_input.v7;
    frag_main();
}
