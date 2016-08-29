//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -2, 10, 4
    def c1, 0.5, 1, 0, -1
    def c2, 0.25, -0.707106769, 0.5, -0.5
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord5 v3.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    add_pp r0, c22.xyzx, -v1.xyzx
    dp3_pp r1.x, r0.yzww, r0.yzww
    rsq_pp r1.x, r1.x
    rcp r1.y, r1.x
    mad_sat_pp r1.y, -r1.y, c60.z, c60.w
    mul_pp r2.xyz, r1.y, c59
    mul r1.yzw, r1.y, c58.xxyz
    mov r3.z, c0.z
    mul_pp r2.w, r3.z, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c0.w
    mul r3, r0, r1.x
    mad_pp r0.xyz, r0, r1.x, -c10
    nrm_pp r4.xyz, r0
    add_pp r0.xyz, r3.wyzw, r3.wyzw
    nrm_pp r5.xyz, r0
    nrm r0, v2.xyzx
    dp3_sat_pp r1.x, r5, r0
    pow_pp r4.w, r1.x, r2.w
    mul_pp r1.x, r4.w, c20.z
    mul_pp r2.xyz, r2, r1.x
    dp3_sat_pp r1.x, r4, r0
    pow_pp r4.x, r1.x, r2.w
    texld r5, v0.zwzw, s10
    mul_pp r1.x, r5.w, c20.z
    mul_pp r1.x, r4.x, r1.x
    mad_pp r2.xyz, r1.x, c37, r2
    dp3_pp r1.x, r0.yzww, r3.yzww
    add r2.w, r1.x, r1.x
    mov_sat_pp r1.x, r1.x
    mad r3, r2.w, r0, -r3
    mul r4, r3.wyzw, c1.wwyz
    mad r6, r3, c1.ywwz, c1.zzzx
    cmp r3, r3.z, r4, r6
    add r0.x, r3.z, c1.y
    rcp r0.x, r0.x
    mad r3.xy, r3.yxzw, r0.x, c1.y
    mad_pp r4.x, r3.y, c2.x, r3.w
    mul_pp r4.y, r3.x, c1.x
    texld_pp r3, r4, s1
    mul r0.x, c64.z, c64.x
    mov r4.xz, c64
    mad r2.w, r4.x, -r4.z, r4.z
    mad_pp r0.x, r5.w, r2.w, r0.x
    texld_pp r4, v0, s0
    mov r6.yzw, c1
    mad r2.w, c16.w, -r4.w, r6.y
    mul r2.w, r2.w, c63.x
    mul r0.x, r0.x, r2.w
    mul_pp r3.xyz, r0.x, r3
    mad_pp r2.xyz, r2, c18, r3
    mul_pp r1.yzw, r1, r1.x
    add_pp r0.x, -r1.x, c1.y
    dp3_sat_pp r1.x, r0.wyzw, -c10
    mul r1.x, r1.x, r5.w
    mul_pp r3.xyz, r5, r5
    mad_pp r1.xyz, r1.x, c36, r1.yzww
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r3.xyz, r0.y, c91
    mad_pp r3.xyz, r0.w, c90, r3
    mad_pp r0.yzw, r0.z, c92.xxyz, r3.xxyz
    mad r1.w, r0.w, -r0.w, c1.y
    mul r2.w, c150.x, c150.x
    mad r1.w, r2.w, -r1.w, c1.y
    cmp r2.w, r1.w, c1.y, c1.z
    mul r1.w, r1.w, r2.w
    mul r2.w, r2.w, c150.x
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    mad r0.w, r2.w, -r0.w, r1.w
    mul_pp r0.yz, r0, r0.w
    add r3.xy, c1.x, vPos
    mul r3.xy, r3, c24.zwzw
    mad r5, c24.zzww, r6.yzzw, r6.zywz
    mad r3.zw, r3.xyxy, c0.xyxy, r5.xyxy
    texld r7, r3, s11
    add_pp r3.xy, r5.zwzw, r3.zwzw
    mad_pp r0.yz, r0, c2.y, r3.xxyw
    mad r0.yz, r0, c2.xzww, c2.z
    texld_pp r3, r0.yzzw, s11
    mad r0.yzw, r1.xxyz, r4.xxyz, -r3.xxyz
    mul_pp r1.x, r4.w, c16.w
    mad_pp r0.yzw, r1.x, r0, r3.xxyz
    mul_pp r1.x, r0.x, r0.x
    mul_pp r1.x, r1.x, r1.x
    mul_pp r0.x, r0.x, r1.x
    lrp_pp r1.x, r0.x, r6.y, c62.x
    mad_pp r0.xyz, r1.x, r2, r0.yzww
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xyz, -r0, r7
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0
    mov_pp oC0.w, c1.y

// approximately 105 instruction slots used (6 texture, 99 arithmetic)