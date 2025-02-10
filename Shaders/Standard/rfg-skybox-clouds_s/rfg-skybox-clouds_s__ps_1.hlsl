cbuffer cb0_t : register(b0)
{
    float4 cb0_m[5] : packoffset(c0);
};

cbuffer cb6_t : register(b6)
{
    float4 cb6_m[2] : packoffset(c0);
};

cbuffer cb2_t : register(b2)
{
    float4 cb2_m[8] : packoffset(c0);
};

uniform sampler2D SPIRV_Cross_Combinedt0s0;
uniform sampler2D SPIRV_Cross_Combinedt1s1;

static float3 v1;
static float4 v2;
static float4 v3;

struct SPIRV_Cross_Input
{
    float3 v1 : TEXCOORD1;
    float4 v2 : TEXCOORD2;
    float4 v3 : TEXCOORD3;
};

static float4 shader_in[4];
static float4 o0;
static float4 r0;
static float4 r1;
static float4 r2;
static float4 r3;

void ps_main()
{
    r0 = tex2D(SPIRV_Cross_Combinedt0s0, shader_in[3].xyxx.xy);
    r1 = tex2D(SPIRV_Cross_Combinedt1s1, shader_in[3].zwzz.xy);
    float4 _77 = r2;
    _77.x = max(shader_in[2].y, asfloat(3212836864u));
    r2 = _77;
    float4 _84 = r2;
    _84.x = min(r2.x, asfloat(1065353216u));
    r2 = _84;
    float4 _97 = r2;
    _97.x = r2.x + (-cb2_m[6].z);
    r2 = _97;
    float4 _108 = r2;
    _108.y = (-cb2_m[6].z) + cb2_m[6].w;
    r2 = _108;
    float4 _118 = r2;
    _118.x = clamp(r2.x / r2.y, 0.0f, 1.0f);
    r2 = _118;
    r3 = float4(r0.yw.x, r0.yw.y, r3.z, r3.w);
    r3 = float4(r3.x, r3.y, r1.yw.x, r1.yw.y);
    r3 *= float4(cb2_m[0].x, cb2_m[0].y, cb2_m[0].z, cb2_m[0].w);
    float3 _147 = r2.xxx * r3.yzw;
    r2 = float4(r2.x, _147.x, _147.y, _147.z);
    r3 = ((-r3) * r2.xxxx) + asfloat(uint4(1065353216u, 1065353216u, 1065353216u, 1065353216u));
    float4 _164 = r0;
    _164.y = r3.y * r3.x;
    r0 = _164;
    float4 _171 = r0;
    _171.y = r3.z * r0.y;
    r0 = _171;
    float4 _182 = r0;
    _182.y = clamp(((-r0.y) * r3.w) + asfloat(1065353216u), 0.0f, 1.0f);
    r0 = _182;
    float4 _189 = r0;
    _189.x = r0.x * r3.y;
    r0 = _189;
    float4 _199 = r0;
    _199.x = (r2.y * r0.z) + r0.x;
    r0 = _199;
    float2 _205 = r1.xz * r2.zw;
    r0 = float4(r0.x, r0.y, _205.x, _205.y);
    float4 _216 = r0;
    _216.x = (r3.z * r0.x) + r0.z;
    r0 = _216;
    float4 _227 = r0;
    _227.x = clamp((r3.w * r0.x) + r0.w, 0.0f, 1.0f);
    r0 = _227;
    float4 _245 = r0;
    _245.z = mad(shader_in[1].xyz.z, shader_in[1].xyz.z, mad(shader_in[1].xyz.y, shader_in[1].xyz.y, shader_in[1].xyz.x * shader_in[1].xyz.x));
    r0 = _245;
    float4 _250 = r0;
    _250.z = rsqrt(r0.z);
    r0 = _250;
    float3 _257 = r0.zzz * shader_in[1].xyz;
    r1 = float4(_257.x, _257.y, _257.z, r1.w);
    float3 _270 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float4 _280 = r0;
    _280.z = mad(r1.xyz.z, _270.z, mad(r1.xyz.y, _270.y, r1.xyz.x * _270.x));
    r0 = _280;
    float4 _289 = r0;
    _289.z = (r0.z * asfloat(1056964608u)) + asfloat(1056964608u);
    r0 = _289;
    float3 _309 = (-float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z)) + float3(cb2_m[4].x, cb2_m[4].y, cb2_m[4].z);
    r1 = float4(_309.x, _309.y, _309.z, r1.w);
    float3 _325 = (r0.zzz * r1.xyz) + float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z);
    r1 = float4(_325.x, _325.y, _325.z, r1.w);
    float4 _336 = r0;
    _336.z = r0.y * (-cb2_m[7].y);
    r0 = _336;
    float4 _341 = r0;
    _341.z = exp2(r0.z);
    r0 = _341;
    float4 _347 = r0;
    _347.z = min(r0.z, asfloat(1065353216u));
    r0 = _347;
    float4 _364 = r0;
    _364.w = mad(shader_in[2].xyz.z, shader_in[2].xyz.z, mad(shader_in[2].xyz.y, shader_in[2].xyz.y, shader_in[2].xyz.x * shader_in[2].xyz.x));
    r0 = _364;
    float4 _369 = r0;
    _369.w = rsqrt(r0.w);
    r0 = _369;
    float3 _376 = r0.www * shader_in[2].xyz;
    r2 = float4(_376.x, _376.y, _376.z, r2.w);
    float3 _388 = float3(cb2_m[5].x, cb2_m[5].y, cb2_m[5].z);
    float4 _399 = r0;
    _399.w = clamp(mad(r2.xyz.z, _388.z, mad(r2.xyz.y, _388.y, r2.xyz.x * _388.x)), 0.0f, 1.0f);
    r0 = _399;
    float4 _404 = r0;
    _404.w = log2(r0.w);
    r0 = _404;
    float4 _411 = r0;
    _411.w = r0.w * asfloat(1106247680u);
    r0 = _411;
    float4 _416 = r0;
    _416.w = exp2(r0.w);
    r0 = _416;
    float3 _430 = float3(cb2_m[3].x, cb2_m[3].y, cb2_m[3].z) * cb2_m[7].z.xxx;
    r2 = float4(_430.x, _430.y, _430.z, r2.w);
    float3 _437 = r0.zzz * r2.xyz;
    r2 = float4(_437.x, _437.y, _437.z, r2.w);
    float3 _447 = (r2.xyz * r0.www) + r1.xyz;
    r1 = float4(_447.x, _447.y, _447.z, r1.w);
    float3 _463 = (r0.xxx * r1.xyz) + float3(cb0_m[2].x, cb0_m[2].y, cb0_m[2].z);
    r0 = float4(_463.x, r0.y, _463.y, _463.z);
    float4 _471 = r1;
    _471.w = r0.y * r0.y;
    r1 = _471;
    float4 _479 = r0;
    _479.y = (-shader_in[2].w) + asfloat(1065353216u);
    r0 = _479;
    float3 _485 = r0.xzw * r0.yyy;
    r0 = float4(_485.x, _485.y, _485.z, r0.w);
    float3 _502 = (shader_in[2].www * float3(cb0_m[4].x, cb0_m[4].y, cb0_m[4].z)) + r0.xyz;
    r1 = float4(_502.x, _502.y, _502.z, r1.w);
    r0 = r1 * float4(cb6_m[0].x, cb6_m[0].y, cb6_m[0].z, cb6_m[0].w);
    float3 _521 = r0.www * r0.xyz;
    r0 = float4(_521.x, _521.y, _521.z, r0.w);
    r0 = min(r0, asfloat(uint4(1107296256u, 1107296256u, 1107296256u, 1107296256u)));
    float4 _539 = r1;
    _539.x = asfloat((asint(cb6_m[1].y) != int(0u)) ? 4294967295u : 0u);
    r1 = _539;
    float4 _549 = r1;
    _549.y = asfloat((r0.w < cb6_m[1].x) ? 4294967295u : 0u);
    r1 = _549;
    float4 _559 = r1;
    _559.x = asfloat(asuint(r1.y) & asuint(r1.x));
    r1 = _559;
    if (asuint(r1.x) != 0u)
    {
        discard;
    }
    o0 = r0;
}

void frag_main()
{
    shader_in[1] = float4(v1.x, v1.y, v1.z, shader_in[1].w);
    shader_in[2] = v2;
    shader_in[3] = v3;
    ps_main();
}

void main(SPIRV_Cross_Input stage_input)
{
    v1 = stage_input.v1;
    v2 = stage_input.v2;
    v3 = stage_input.v3;
    frag_main();
}
