cbuffer cb1_t : register(b1)
{
    float4 cb1_m[1] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[7] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt2s2;
uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float2 v1;
static float3 v2;
static float3 v3;

struct SPIRV_Cross_Input
{
    float2 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    float4 _67 = r0;
    _67.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r0 = _67;
    float4 _77 = r0;
    _77.y = asfloat((asfloat(1065353216u) < cb6_m[1].x) ? 4294967295u : 0u);
    r0 = _77;
    float4 _87 = r0;
    _87.x = asfloat(asuint(r0.y) & asuint(r0.x));
    r0 = _87;
    if (asuint(r0.x) != 0u)
    {
        discard;
    }
    r0 = tex2D(SPIRV_Cross_Combinedt2s2, shader_in[1].xyxx.xy);
    float3 _115 = r0.xyz * float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    r0 = float4(_115.x, _115.y, _115.z, r0.w);
    float4 _134 = r0;
    _134.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _134;
    float4 _139 = r0;
    _139.w = rsqrt(r0.w);
    r0 = _139;
    float3 _146 = r0.www * shader_in[2].xyz;
    r1 = float4(_146.x, _146.y, _146.z, r1.w);
    r2 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[1].xyxx.xy);
    float4 _165 = r3;
    _165.y = r2.y + r2.y;
    r3 = _165;
    float3 _177 = (r2.xyw * asfloat(uint3(1073741824u, 1073741824u, 1073741824u))) + asfloat(uint3(3212836864u, 3212836864u, 3212836864u));
    r2 = float4(r2.x, _177.x, _177.y, _177.z);
    float4 _185 = r2;
    _185.x = r2.w * r2.y;
    r2 = _185;
    float4 _197 = r0;
    _197.w = mad(r2.xz.y, r2.xz.y, r2.xz.x * r2.xz.x);
    r0 = _197;
    float4 _204 = r0;
    _204.w = (-r0.w) + asfloat(1065353216u);
    r0 = _204;
    float4 _210 = r0;
    _210.w = max(r0.w, asfloat(0u));
    r0 = _210;
    float4 _215 = r3;
    _215.z = sqrt(r0.w);
    r3 = _215;
    float4 _219 = r3;
    _219.x = r2.x;
    r3 = _219;
    float3 _226 = r3.xyz + asfloat(uint3(2147483648u, 3212836864u, 3212836864u));
    r2 = float4(_226.x, _226.y, _226.z, r2.w);
    float3 _239 = (cb2_m[6].z.xxx * r2.xyz) + asfloat(uint3(0u, 0u, 1065353216u));
    r2 = float4(_239.x, _239.y, _239.z, r2.w);
    float4 _255 = r0;
    _255.w = mad(r2.xyz.z, r2.xyz.z, mad(r2.xyz.y, r2.xyz.y, r2.xyz.x * r2.xyz.x));
    r0 = _255;
    float4 _260 = r0;
    _260.w = rsqrt(r0.w);
    r0 = _260;
    float3 _266 = r0.www * r2.xyz;
    r2 = float4(_266.x, _266.y, _266.z, r2.w);
    float4 _285 = r0;
    _285.w = mad(shader_in[3].xyz.z, shader_in[3].xyz.z, mad(shader_in[3].xyz.y, shader_in[3].xyz.y, shader_in[3].xyz.x * shader_in[3].xyz.x));
    r0 = _285;
    float4 _290 = r0;
    _290.w = rsqrt(r0.w);
    r0 = _290;
    float3 _300 = (shader_in[3].xyz * r0.www) + r1.xyz;
    r3 = float4(_300.x, _300.y, _300.z, r3.w);
    float4 _316 = r0;
    _316.w = mad(r3.xyz.z, r3.xyz.z, mad(r3.xyz.y, r3.xyz.y, r3.xyz.x * r3.xyz.x));
    r0 = _316;
    float4 _321 = r0;
    _321.w = rsqrt(r0.w);
    r0 = _321;
    float3 _327 = r0.www * r3.xyz;
    r3 = float4(_327.x, _327.y, _327.z, r3.w);
    float4 _343 = r0;
    _343.w = mad(r1.xyz.z, r2.xyz.z, mad(r1.xyz.y, r2.xyz.y, r1.xyz.x * r2.xyz.x));
    r0 = _343;
    float4 _358 = r1;
    _358.x = mad(r2.xyz.z, r3.xyz.z, mad(r2.xyz.y, r3.xyz.y, r2.xyz.x * r3.xyz.x));
    r1 = _358;
    float4 _367 = r1;
    _367.y = (r0.w * asfloat(1056964608u)) + asfloat(1056964608u);
    r1 = _367;
    float4 _373 = r1;
    _373.x = max(r1.x, asfloat(0u));
    r1 = _373;
    float4 _379 = r0;
    _379.w = max(r0.w, asfloat(0u));
    r0 = _379;
    float4 _386 = r1;
    _386.y = r1.y * r1.y;
    r1 = _386;
    float4 _393 = r1;
    _393.y = r1.y * r1.y;
    r1 = _393;
    float4 _400 = r1;
    _400.z = r1.y * r1.y;
    r1 = _400;
    float4 _407 = r1;
    _407.z = r1.z * r1.z;
    r1 = _407;
    float3 _419 = r1.yyy * float3(cb2_m[1].x, cb2_m[1].y, cb2_m[1].z);
    r2 = float4(_419.x, _419.y, _419.z, r2.w);
    float3 _435 = (r1.zzz * float3(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z)) + r2.xyz;
    r1 = float4(r1.x, _435.x, _435.y, _435.z);
    r2 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[1].xyxx.xy);
    float4 _449 = r1;
    _449.x = log2(r1.x);
    r1 = _449;
    float3 _458 = r1.xxx * asfloat(uint3(1115684864u, 1107296256u, 1098907648u));
    r3 = float4(_458.x, _458.y, _458.z, r3.w);
    float3 _463 = exp2(r3.xyz);
    r3 = float4(_463.x, _463.y, _463.z, r3.w);
    float3 _470 = r2.xyz * r3.xyz;
    r2 = float4(_470.x, _470.y, _470.z, r2.w);
    float3 _483 = r2.yyy * float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r3 = float4(_483.x, _483.y, _483.z, r3.w);
    float3 _499 = (float3(cb2_m[2].x, cb2_m[2].y, cb2_m[2].z) * r2.xxx) + r3.xyz;
    r2 = float4(_499.x, _499.y, r2.z, _499.z);
    float3 _516 = (float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z) * r2.zzz) + r2.xyw;
    r2 = float4(_516.x, _516.y, _516.z, r2.w);
    float3 _526 = r2.xyz * cb2_m[6].w.xxx;
    r2 = float4(_526.x, _526.y, _526.z, r2.w);
    float3 _533 = r0.www * r2.xyz;
    r2 = float4(_533.x, _533.y, _533.z, r2.w);
    float3 _543 = (r1.yzw * r0.xyz) + r2.xyz;
    r0 = float4(_543.x, _543.y, _543.z, r0.w);
    float3 _556 = r0.xyz * float3(cb1_m[0].x, cb1_m[0].y, cb1_m[0].z);
    o0 = float4(_556.x, _556.y, _556.z, o0.w);
    float4 _560 = o0;
    _560.w = asfloat(1065353216u);
    o0 = _560;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, shader_in[1].z, shader_in[1].w);
    shader_in[2] = float4(v2.x, v2.y, v2.z, shader_in[2].w);
    shader_in[3] = float4(v3.x, v3.y, v3.z, shader_in[3].w);
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
