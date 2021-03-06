function d2_ddt_glob = Generate_D2_Ddt_Glob(F1,F2,F3,F4,F5,F6,Fr1_1,Fr1_2,Fr1_3,Fr1_4,Fr1_5,Fr1_6,Fr2_1,Fr2_2,Fr2_3,Fr2_4,Fr2_5,Fr2_6,Fr3_1,Fr3_2,Fr3_3,Fr3_4,Fr3_5,Fr3_6,L_vector1_1,L_vector1_2,L_vector1_3,L_vector1_4,L_vector1_5,L_vector1_6,L_vector2_1,L_vector2_2,L_vector2_3,L_vector2_4,L_vector2_5,L_vector2_6,L_vector3_1,L_vector3_2,L_vector3_3,L_vector3_4,L_vector3_5,L_vector3_6,Prmg,Prmm1,Prmm2,Prmm3,PrmB_1,PrmB_2,PrmB_3,PrmB_4,PrmB_5,PrmB_6,Prmk_1,Prmk_2,Prmk_3,Prmk_4,Prmk_5,Prmk_6,TP1_1,TP1_2,TP1_3,TP1_4,TP1_5,TP1_6,TP2_1,TP2_2,TP2_3,TP2_4,TP2_5,TP2_6,TP3_1,TP3_2,TP3_3,TP3_4,TP3_5,TP3_6,alpha,alpha_dot,beta,beta_dot,d1_1,d1_2,d1_3,d1_4,d1_5,d1_6,d1dot_1,d1dot_2,d1dot_3,d1dot_4,d1dot_5,d1dot_6,gamma,gamma_dot,r2_1,r2_2,r2_3,r2_4,r2_5,r2_6,r3_1,r3_2,r3_3,r3_4,r3_5,r3_6,x,x_dot,xb1,xb2,xb3,xb4,xb5,xb6,y,y_dot,yb1,yb2,yb3,yb4,yb5,yb6,z,z_dot,zb1,zb2,zb3,zb4,zb5,zb6)
%GENERATE_D2_DDT_GLOB
%    D2_DDT_GLOB = GENERATE_D2_DDT_GLOB(F1,F2,F3,F4,F5,F6,FR1_1,FR1_2,FR1_3,FR1_4,FR1_5,FR1_6,FR2_1,FR2_2,FR2_3,FR2_4,FR2_5,FR2_6,FR3_1,FR3_2,FR3_3,FR3_4,FR3_5,FR3_6,L_VECTOR1_1,L_VECTOR1_2,L_VECTOR1_3,L_VECTOR1_4,L_VECTOR1_5,L_VECTOR1_6,L_VECTOR2_1,L_VECTOR2_2,L_VECTOR2_3,L_VECTOR2_4,L_VECTOR2_5,L_VECTOR2_6,L_VECTOR3_1,L_VECTOR3_2,L_VECTOR3_3,L_VECTOR3_4,L_VECTOR3_5,L_VECTOR3_6,PRMG,PRMM1,PRMM2,PRMM3,PRMB_1,PRMB_2,PRMB_3,PRMB_4,PRMB_5,PRMB_6,PRMK_1,PRMK_2,PRMK_3,PRMK_4,PRMK_5,PRMK_6,TP1_1,TP1_2,TP1_3,TP1_4,TP1_5,TP1_6,TP2_1,TP2_2,TP2_3,TP2_4,TP2_5,TP2_6,TP3_1,TP3_2,TP3_3,TP3_4,TP3_5,TP3_6,ALPHA,ALPHA_DOT,BETA,BETA_DOT,D1_1,D1_2,D1_3,D1_4,D1_5,D1_6,D1DOT_1,D1DOT_2,D1DOT_3,D1DOT_4,D1DOT_5,D1DOT_6,GAMMA,GAMMA_DOT,R2_1,R2_2,R2_3,R2_4,R2_5,R2_6,R3_1,R3_2,R3_3,R3_4,R3_5,R3_6,X,X_DOT,XB1,XB2,XB3,XB4,XB5,XB6,Y,Y_DOT,YB1,YB2,YB3,YB4,YB5,YB6,Z,Z_DOT,ZB1,ZB2,ZB3,ZB4,ZB5,ZB6)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    03-Oct-2016 12:03:44

t2 = cos(beta);
t3 = sin(gamma);
t4 = cos(gamma);
t5 = sin(alpha);
t6 = sin(beta);
t8 = cos(alpha);
t11 = t2.*t4;
t12 = t3.*t5.*t6;
t13 = t11+t12;
t14 = TP1_1.*t13;
t15 = t2.*t3;
t16 = t4.*t5.*t6;
t17 = t15-t16;
t18 = TP2_1.*t17;
t19 = TP3_1.*t6.*t8;
t7 = t14-t18+t19+x-xb1;
t21 = TP3_1.*t5;
t22 = TP2_1.*t4.*t8;
t23 = TP1_1.*t3.*t8;
t9 = -t21+t22+t23+y-yb1;
t25 = t3.*t6;
t26 = t2.*t4.*t5;
t27 = t25+t26;
t28 = t4.*t6;
t29 = t2.*t3.*t5;
t30 = t28-t29;
t32 = TP1_1.*t30;
t33 = TP2_1.*t27;
t34 = TP3_1.*t2.*t8;
t10 = -t32+t33+t34+z-zb1;
t20 = t7.^2;
t24 = t9.^2;
t31 = t20+t24;
t35 = t10.^2;
t36 = t20+t24+t35;
t37 = 1.0./t36;
t38 = 1.0./sqrt(t31);
t40 = sqrt(t31);
t41 = -t32+t33+t34;
t42 = beta_dot.*t41;
t43 = TP3_1.*t5.*t6;
t44 = TP2_1.*t4.*t6.*t8;
t45 = TP1_1.*t3.*t6.*t8;
t46 = -t43+t44+t45;
t47 = alpha_dot.*t46;
t48 = TP1_1.*t17;
t49 = TP2_1.*t13;
t50 = t48+t49;
t51 = gamma_dot.*t50;
t52 = t42+t47-t51+x_dot;
t54 = TP3_1.*t8;
t55 = TP2_1.*t4.*t5;
t56 = TP1_1.*t3.*t5;
t57 = t54+t55+t56;
t58 = alpha_dot.*t57;
t59 = TP1_1.*t4.*t8;
t60 = TP2_1.*t3.*t8;
t61 = t59-t60;
t62 = gamma_dot.*t61;
t63 = -t58+t62+y_dot;
t71 = t14-t18+t19;
t72 = beta_dot.*t71;
t73 = TP3_1.*t2.*t5;
t74 = TP2_1.*t2.*t4.*t8;
t75 = TP1_1.*t2.*t3.*t8;
t76 = -t73+t74+t75;
t77 = alpha_dot.*t76;
t78 = TP1_1.*t27;
t79 = TP2_1.*t30;
t80 = t78+t79;
t81 = gamma_dot.*t80;
t82 = -t72+t77+t81+z_dot;
t83 = t37.*t40.*t82;
t84 = x.*2.0;
t85 = xb1.*2.0;
t86 = TP1_1.*t13.*2.0;
t87 = TP2_1.*t17.*2.0;
t88 = TP3_1.*t6.*t8.*2.0;
t89 = t84-t85+t86-t87+t88;
t90 = t10.*t37.*t38.*t52.*t89.*(1.0./2.0);
t91 = y.*2.0;
t92 = yb1.*2.0;
t93 = TP3_1.*t5.*2.0;
t94 = TP2_1.*t4.*t8.*2.0;
t95 = TP1_1.*t3.*t8.*2.0;
t96 = t91-t92-t93+t94+t95;
t97 = t10.*t37.*t38.*t63.*t96.*(1.0./2.0);
t39 = -t83+t90+t97;
t53 = 1.0./t31;
t107 = t9.*t52.*t53;
t108 = t7.*t53.*t63;
t64 = t107-t108;
t65 = L_vector1_1.^2;
t66 = L_vector2_1.^2;
t67 = L_vector3_1.^2;
t68 = t65+t66+t67;
t69 = 1.0./sqrt(t68);
t70 = Prmm1+Prmm2;
t98 = t39.^2;
t99 = z.*1i;
t100 = zb1.*-1i;
t101 = TP1_1.*t30.*-1i;
t102 = TP2_1.*t27.*1i;
t103 = TP3_1.*t2.*t8.*1i;
t104 = t40+t99+t100+t101+t102+t103;
t105 = abs(t104);
t106 = 1.0./t105.^2;
t109 = t64.^2;
t110 = 1.0./t105;
t111 = 1.0./Prmm3;
t115 = TP1_2.*t13;
t116 = TP2_2.*t17;
t117 = TP3_2.*t6.*t8;
t112 = t115-t116+t117+x-xb2;
t119 = TP3_2.*t5;
t120 = TP2_2.*t4.*t8;
t121 = TP1_2.*t3.*t8;
t113 = -t119+t120+t121+y-yb2;
t124 = TP1_2.*t30;
t125 = TP2_2.*t27;
t126 = TP3_2.*t2.*t8;
t114 = -t124+t125+t126+z-zb2;
t118 = t112.^2;
t122 = t113.^2;
t123 = t118+t122;
t127 = t114.^2;
t128 = t118+t122+t127;
t129 = 1.0./t128;
t130 = 1.0./sqrt(t123);
t132 = sqrt(t123);
t133 = -t124+t125+t126;
t134 = beta_dot.*t133;
t135 = TP3_2.*t5.*t6;
t136 = TP2_2.*t4.*t6.*t8;
t137 = TP1_2.*t3.*t6.*t8;
t138 = -t135+t136+t137;
t139 = alpha_dot.*t138;
t140 = TP1_2.*t17;
t141 = TP2_2.*t13;
t142 = t140+t141;
t143 = gamma_dot.*t142;
t144 = t134+t139-t143+x_dot;
t146 = TP3_2.*t8;
t147 = TP2_2.*t4.*t5;
t148 = TP1_2.*t3.*t5;
t149 = t146+t147+t148;
t150 = alpha_dot.*t149;
t151 = TP1_2.*t4.*t8;
t152 = TP2_2.*t3.*t8;
t153 = t151-t152;
t154 = gamma_dot.*t153;
t155 = -t150+t154+y_dot;
t163 = t115-t116+t117;
t164 = beta_dot.*t163;
t165 = TP3_2.*t2.*t5;
t166 = TP2_2.*t2.*t4.*t8;
t167 = TP1_2.*t2.*t3.*t8;
t168 = -t165+t166+t167;
t169 = alpha_dot.*t168;
t170 = TP1_2.*t27;
t171 = TP2_2.*t30;
t172 = t170+t171;
t173 = gamma_dot.*t172;
t174 = -t164+t169+t173+z_dot;
t175 = t129.*t132.*t174;
t176 = xb2.*2.0;
t177 = TP1_2.*t13.*2.0;
t178 = TP2_2.*t17.*2.0;
t179 = TP3_2.*t6.*t8.*2.0;
t180 = t84-t176+t177-t178+t179;
t181 = t114.*t129.*t130.*t144.*t180.*(1.0./2.0);
t182 = yb2.*2.0;
t183 = TP3_2.*t5.*2.0;
t184 = TP2_2.*t4.*t8.*2.0;
t185 = TP1_2.*t3.*t8.*2.0;
t186 = t91-t182-t183+t184+t185;
t187 = t114.*t129.*t130.*t155.*t186.*(1.0./2.0);
t131 = -t175+t181+t187;
t145 = 1.0./t123;
t196 = t113.*t144.*t145;
t197 = t112.*t145.*t155;
t156 = t196-t197;
t157 = L_vector1_2.^2;
t158 = L_vector2_2.^2;
t159 = L_vector3_2.^2;
t160 = t157+t158+t159;
t161 = 1.0./sqrt(t160);
t162 = 1.0./t70;
t188 = t131.^2;
t189 = zb2.*-1i;
t190 = TP1_2.*t30.*-1i;
t191 = TP2_2.*t27.*1i;
t192 = TP3_2.*t2.*t8.*1i;
t193 = t99+t132+t189+t190+t191+t192;
t194 = abs(t193);
t195 = 1.0./t194.^2;
t198 = t156.^2;
t199 = Prmm1.*(1.0./2.0);
t200 = Prmm2+t199;
t201 = 1.0./t194;
t205 = TP1_3.*t13;
t206 = TP2_3.*t17;
t207 = TP3_3.*t6.*t8;
t202 = t205-t206+t207+x-xb3;
t209 = TP3_3.*t5;
t210 = TP2_3.*t4.*t8;
t211 = TP1_3.*t3.*t8;
t203 = -t209+t210+t211+y-yb3;
t214 = TP1_3.*t30;
t215 = TP2_3.*t27;
t216 = TP3_3.*t2.*t8;
t204 = -t214+t215+t216+z-zb3;
t208 = t202.^2;
t212 = t203.^2;
t213 = t208+t212;
t217 = t204.^2;
t218 = t208+t212+t217;
t219 = 1.0./t218;
t220 = 1.0./sqrt(t213);
t222 = sqrt(t213);
t223 = -t214+t215+t216;
t224 = beta_dot.*t223;
t225 = TP3_3.*t5.*t6;
t226 = TP2_3.*t4.*t6.*t8;
t227 = TP1_3.*t3.*t6.*t8;
t228 = -t225+t226+t227;
t229 = alpha_dot.*t228;
t230 = TP1_3.*t17;
t231 = TP2_3.*t13;
t232 = t230+t231;
t233 = gamma_dot.*t232;
t234 = t224+t229-t233+x_dot;
t236 = TP3_3.*t8;
t237 = TP2_3.*t4.*t5;
t238 = TP1_3.*t3.*t5;
t239 = t236+t237+t238;
t240 = alpha_dot.*t239;
t241 = TP1_3.*t4.*t8;
t242 = TP2_3.*t3.*t8;
t243 = t241-t242;
t244 = gamma_dot.*t243;
t245 = -t240+t244+y_dot;
t252 = t205-t206+t207;
t253 = beta_dot.*t252;
t254 = TP3_3.*t2.*t5;
t255 = TP2_3.*t2.*t4.*t8;
t256 = TP1_3.*t2.*t3.*t8;
t257 = -t254+t255+t256;
t258 = alpha_dot.*t257;
t259 = TP1_3.*t27;
t260 = TP2_3.*t30;
t261 = t259+t260;
t262 = gamma_dot.*t261;
t263 = -t253+t258+t262+z_dot;
t264 = t219.*t222.*t263;
t265 = xb3.*2.0;
t266 = TP1_3.*t13.*2.0;
t267 = TP2_3.*t17.*2.0;
t268 = TP3_3.*t6.*t8.*2.0;
t269 = t84-t265+t266-t267+t268;
t270 = t204.*t219.*t220.*t234.*t269.*(1.0./2.0);
t271 = yb3.*2.0;
t272 = TP3_3.*t5.*2.0;
t273 = TP2_3.*t4.*t8.*2.0;
t274 = TP1_3.*t3.*t8.*2.0;
t275 = t91-t271-t272+t273+t274;
t276 = t204.*t219.*t220.*t245.*t275.*(1.0./2.0);
t221 = -t264+t270+t276;
t235 = 1.0./t213;
t285 = t203.*t234.*t235;
t286 = t202.*t235.*t245;
t246 = t285-t286;
t247 = L_vector1_3.^2;
t248 = L_vector2_3.^2;
t249 = L_vector3_3.^2;
t250 = t247+t248+t249;
t251 = 1.0./sqrt(t250);
t277 = t221.^2;
t278 = zb3.*-1i;
t279 = TP1_3.*t30.*-1i;
t280 = TP2_3.*t27.*1i;
t281 = TP3_3.*t2.*t8.*1i;
t282 = t99+t222+t278+t279+t280+t281;
t283 = abs(t282);
t284 = 1.0./t283.^2;
t287 = t246.^2;
t288 = 1.0./t283;
t292 = TP1_4.*t13;
t293 = TP2_4.*t17;
t294 = TP3_4.*t6.*t8;
t289 = t292-t293+t294+x-xb4;
t296 = TP3_4.*t5;
t297 = TP2_4.*t4.*t8;
t298 = TP1_4.*t3.*t8;
t290 = -t296+t297+t298+y-yb4;
t301 = TP1_4.*t30;
t302 = TP2_4.*t27;
t303 = TP3_4.*t2.*t8;
t291 = -t301+t302+t303+z-zb4;
t295 = t289.^2;
t299 = t290.^2;
t300 = t295+t299;
t304 = t291.^2;
t305 = t295+t299+t304;
t306 = 1.0./t305;
t307 = 1.0./sqrt(t300);
t309 = sqrt(t300);
t310 = -t301+t302+t303;
t311 = beta_dot.*t310;
t312 = TP3_4.*t5.*t6;
t313 = TP2_4.*t4.*t6.*t8;
t314 = TP1_4.*t3.*t6.*t8;
t315 = -t312+t313+t314;
t316 = alpha_dot.*t315;
t317 = TP1_4.*t17;
t318 = TP2_4.*t13;
t319 = t317+t318;
t320 = gamma_dot.*t319;
t321 = t311+t316-t320+x_dot;
t323 = TP3_4.*t8;
t324 = TP2_4.*t4.*t5;
t325 = TP1_4.*t3.*t5;
t326 = t323+t324+t325;
t327 = alpha_dot.*t326;
t328 = TP1_4.*t4.*t8;
t329 = TP2_4.*t3.*t8;
t330 = t328-t329;
t331 = gamma_dot.*t330;
t332 = -t327+t331+y_dot;
t339 = t292-t293+t294;
t340 = beta_dot.*t339;
t341 = TP3_4.*t2.*t5;
t342 = TP2_4.*t2.*t4.*t8;
t343 = TP1_4.*t2.*t3.*t8;
t344 = -t341+t342+t343;
t345 = alpha_dot.*t344;
t346 = TP1_4.*t27;
t347 = TP2_4.*t30;
t348 = t346+t347;
t349 = gamma_dot.*t348;
t350 = -t340+t345+t349+z_dot;
t351 = t306.*t309.*t350;
t352 = xb4.*2.0;
t353 = TP1_4.*t13.*2.0;
t354 = TP2_4.*t17.*2.0;
t355 = TP3_4.*t6.*t8.*2.0;
t356 = t84-t352+t353-t354+t355;
t357 = t291.*t306.*t307.*t321.*t356.*(1.0./2.0);
t358 = yb4.*2.0;
t359 = TP3_4.*t5.*2.0;
t360 = TP2_4.*t4.*t8.*2.0;
t361 = TP1_4.*t3.*t8.*2.0;
t362 = t91-t358-t359+t360+t361;
t363 = t291.*t306.*t307.*t332.*t362.*(1.0./2.0);
t308 = -t351+t357+t363;
t322 = 1.0./t300;
t372 = t290.*t321.*t322;
t373 = t289.*t322.*t332;
t333 = t372-t373;
t334 = L_vector1_4.^2;
t335 = L_vector2_4.^2;
t336 = L_vector3_4.^2;
t337 = t334+t335+t336;
t338 = 1.0./sqrt(t337);
t364 = t308.^2;
t365 = zb4.*-1i;
t366 = TP1_4.*t30.*-1i;
t367 = TP2_4.*t27.*1i;
t368 = TP3_4.*t2.*t8.*1i;
t369 = t99+t309+t365+t366+t367+t368;
t370 = abs(t369);
t371 = 1.0./t370.^2;
t374 = t333.^2;
t375 = 1.0./t370;
t379 = TP1_5.*t13;
t380 = TP2_5.*t17;
t381 = TP3_5.*t6.*t8;
t376 = t379-t380+t381+x-xb5;
t383 = TP3_5.*t5;
t384 = TP2_5.*t4.*t8;
t385 = TP1_5.*t3.*t8;
t377 = -t383+t384+t385+y-yb5;
t388 = TP1_5.*t30;
t389 = TP2_5.*t27;
t390 = TP3_5.*t2.*t8;
t378 = -t388+t389+t390+z-zb5;
t382 = t376.^2;
t386 = t377.^2;
t387 = t382+t386;
t391 = t378.^2;
t392 = t382+t386+t391;
t393 = 1.0./t392;
t394 = 1.0./sqrt(t387);
t396 = sqrt(t387);
t397 = -t388+t389+t390;
t398 = beta_dot.*t397;
t399 = TP3_5.*t5.*t6;
t400 = TP2_5.*t4.*t6.*t8;
t401 = TP1_5.*t3.*t6.*t8;
t402 = -t399+t400+t401;
t403 = alpha_dot.*t402;
t404 = TP1_5.*t17;
t405 = TP2_5.*t13;
t406 = t404+t405;
t407 = gamma_dot.*t406;
t408 = t398+t403-t407+x_dot;
t410 = TP3_5.*t8;
t411 = TP2_5.*t4.*t5;
t412 = TP1_5.*t3.*t5;
t413 = t410+t411+t412;
t414 = alpha_dot.*t413;
t415 = TP1_5.*t4.*t8;
t416 = TP2_5.*t3.*t8;
t417 = t415-t416;
t418 = gamma_dot.*t417;
t419 = -t414+t418+y_dot;
t426 = t379-t380+t381;
t427 = beta_dot.*t426;
t428 = TP3_5.*t2.*t5;
t429 = TP2_5.*t2.*t4.*t8;
t430 = TP1_5.*t2.*t3.*t8;
t431 = -t428+t429+t430;
t432 = alpha_dot.*t431;
t433 = TP1_5.*t27;
t434 = TP2_5.*t30;
t435 = t433+t434;
t436 = gamma_dot.*t435;
t437 = -t427+t432+t436+z_dot;
t438 = t393.*t396.*t437;
t439 = xb5.*2.0;
t440 = TP1_5.*t13.*2.0;
t441 = TP2_5.*t17.*2.0;
t442 = TP3_5.*t6.*t8.*2.0;
t443 = t84-t439+t440-t441+t442;
t444 = t378.*t393.*t394.*t408.*t443.*(1.0./2.0);
t445 = yb5.*2.0;
t446 = TP3_5.*t5.*2.0;
t447 = TP2_5.*t4.*t8.*2.0;
t448 = TP1_5.*t3.*t8.*2.0;
t449 = t91-t445-t446+t447+t448;
t450 = t378.*t393.*t394.*t419.*t449.*(1.0./2.0);
t395 = -t438+t444+t450;
t409 = 1.0./t387;
t459 = t377.*t408.*t409;
t460 = t376.*t409.*t419;
t420 = t459-t460;
t421 = L_vector1_5.^2;
t422 = L_vector2_5.^2;
t423 = L_vector3_5.^2;
t424 = t421+t422+t423;
t425 = 1.0./sqrt(t424);
t451 = t395.^2;
t452 = zb5.*-1i;
t453 = TP1_5.*t30.*-1i;
t454 = TP2_5.*t27.*1i;
t455 = TP3_5.*t2.*t8.*1i;
t456 = t99+t396+t452+t453+t454+t455;
t457 = abs(t456);
t458 = 1.0./t457.^2;
t461 = t420.^2;
t462 = 1.0./t457;
t466 = TP1_6.*t13;
t467 = TP2_6.*t17;
t468 = TP3_6.*t6.*t8;
t463 = t466-t467+t468+x-xb6;
t470 = TP3_6.*t5;
t471 = TP2_6.*t4.*t8;
t472 = TP1_6.*t3.*t8;
t464 = -t470+t471+t472+y-yb6;
t475 = TP1_6.*t30;
t476 = TP2_6.*t27;
t477 = TP3_6.*t2.*t8;
t465 = -t475+t476+t477+z-zb6;
t469 = t463.^2;
t473 = t464.^2;
t474 = t469+t473;
t478 = t465.^2;
t479 = t469+t473+t478;
t480 = 1.0./t479;
t481 = 1.0./sqrt(t474);
t483 = sqrt(t474);
t484 = -t475+t476+t477;
t485 = beta_dot.*t484;
t486 = TP3_6.*t5.*t6;
t487 = TP2_6.*t4.*t6.*t8;
t488 = TP1_6.*t3.*t6.*t8;
t489 = -t486+t487+t488;
t490 = alpha_dot.*t489;
t491 = TP1_6.*t17;
t492 = TP2_6.*t13;
t493 = t491+t492;
t494 = gamma_dot.*t493;
t495 = t485+t490-t494+x_dot;
t497 = TP3_6.*t8;
t498 = TP2_6.*t4.*t5;
t499 = TP1_6.*t3.*t5;
t500 = t497+t498+t499;
t501 = alpha_dot.*t500;
t502 = TP1_6.*t4.*t8;
t503 = TP2_6.*t3.*t8;
t504 = t502-t503;
t505 = gamma_dot.*t504;
t506 = -t501+t505+y_dot;
t513 = t466-t467+t468;
t514 = beta_dot.*t513;
t515 = TP3_6.*t2.*t5;
t516 = TP2_6.*t2.*t4.*t8;
t517 = TP1_6.*t2.*t3.*t8;
t518 = -t515+t516+t517;
t519 = alpha_dot.*t518;
t520 = TP1_6.*t27;
t521 = TP2_6.*t30;
t522 = t520+t521;
t523 = gamma_dot.*t522;
t524 = -t514+t519+t523+z_dot;
t525 = t480.*t483.*t524;
t526 = xb6.*2.0;
t527 = TP1_6.*t13.*2.0;
t528 = TP2_6.*t17.*2.0;
t529 = TP3_6.*t6.*t8.*2.0;
t530 = t84-t526+t527-t528+t529;
t531 = t465.*t480.*t481.*t495.*t530.*(1.0./2.0);
t532 = yb6.*2.0;
t533 = TP3_6.*t5.*2.0;
t534 = TP2_6.*t4.*t8.*2.0;
t535 = TP1_6.*t3.*t8.*2.0;
t536 = t91-t532-t533+t534+t535;
t537 = t465.*t480.*t481.*t506.*t536.*(1.0./2.0);
t482 = -t525+t531+t537;
t496 = 1.0./t474;
t546 = t464.*t495.*t496;
t547 = t463.*t496.*t506;
t507 = t546-t547;
t508 = L_vector1_6.^2;
t509 = L_vector2_6.^2;
t510 = L_vector3_6.^2;
t511 = t508+t509+t510;
t512 = 1.0./sqrt(t511);
t538 = t482.^2;
t539 = zb6.*-1i;
t540 = TP1_6.*t30.*-1i;
t541 = TP2_6.*t27.*1i;
t542 = TP3_6.*t2.*t8.*1i;
t543 = t99+t483+t539+t540+t541+t542;
t544 = abs(t543);
t545 = 1.0./t544.^2;
t548 = t507.^2;
t549 = 1.0./t544;
d2_ddt_glob = [t111.*(F1+Fr1_1.*L_vector1_1.*t69+Fr2_1.*L_vector2_1.*t69+Fr3_1.*L_vector3_1.*t69+Prmm3.*t162.*(F1+Prmk_1.*d1_1+PrmB_1.*d1dot_1-t70.*(r2_1.*t98+r2_1.*t31.*t106.*t109)+Prmg.*t10.*t110.*t200)+Prmm3.*r3_1.*(t98+t31.*t106.*t109)-Prmg.*Prmm3.*t10.*t110),t111.*(F2+Fr1_2.*L_vector1_2.*t161+Fr2_2.*L_vector2_2.*t161+Fr3_2.*L_vector3_2.*t161+Prmm3.*t162.*(F2+Prmk_2.*d1_2+PrmB_2.*d1dot_2-t70.*(r2_2.*t188+r2_2.*t123.*t195.*t198)+Prmg.*t114.*t200.*t201)+Prmm3.*r3_2.*(t188+t123.*t195.*t198)-Prmg.*Prmm3.*t114.*t201),t111.*(F3+Fr1_3.*L_vector1_3.*t251+Fr2_3.*L_vector2_3.*t251+Fr3_3.*L_vector3_3.*t251+Prmm3.*t162.*(F3+Prmk_3.*d1_3+PrmB_3.*d1dot_3-t70.*(r2_3.*t277+r2_3.*t213.*t284.*t287)+Prmg.*t200.*t204.*t288)+Prmm3.*r3_3.*(t277+t213.*t284.*t287)-Prmg.*Prmm3.*t204.*t288),t111.*(F4+Fr1_4.*L_vector1_4.*t338+Fr2_4.*L_vector2_4.*t338+Fr3_4.*L_vector3_4.*t338+Prmm3.*t162.*(F4+Prmk_4.*d1_4+PrmB_4.*d1dot_4-t70.*(r2_4.*t364+r2_4.*t300.*t371.*t374)+Prmg.*t200.*t291.*t375)+Prmm3.*r3_4.*(t364+t300.*t371.*t374)-Prmg.*Prmm3.*t291.*t375),t111.*(F5+Fr1_5.*L_vector1_5.*t425+Fr2_5.*L_vector2_5.*t425+Fr3_5.*L_vector3_5.*t425+Prmm3.*t162.*(F5+Prmk_5.*d1_5+PrmB_5.*d1dot_5-t70.*(r2_5.*t451+r2_5.*t387.*t458.*t461)+Prmg.*t200.*t378.*t462)+Prmm3.*r3_5.*(t451+t387.*t458.*t461)-Prmg.*Prmm3.*t378.*t462),t111.*(F6+Fr1_6.*L_vector1_6.*t512+Fr2_6.*L_vector2_6.*t512+Fr3_6.*L_vector3_6.*t512+Prmm3.*t162.*(F6+Prmk_6.*d1_6+PrmB_6.*d1dot_6-t70.*(r2_6.*t538+r2_6.*t474.*t545.*t548)+Prmg.*t200.*t465.*t549)+Prmm3.*r3_6.*(t538+t474.*t545.*t548)-Prmg.*Prmm3.*t465.*t549)];
