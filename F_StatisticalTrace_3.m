clear
clc

p=[
4	,	385
5	,	385
9	,	353
10	,	311
17	,	225
18	,	309
19	,	285
20	,	286
24	,	286
32	,	225
33	,	143
35	,	225
36	,	183
37	,	183
38	,	183
39	,	183
40	,	124
42	,	7
43	,	187
44	,	276
45	,	333
54	,	366
55	,	373
56	,	353
58	,	353
59	,	373
60	,	373
61	,	390
62	,	373
71	,	353
72	,	289
73	,	225
74	,	201
77	,	201
78	,	185
79	,	166
80	,	166
81	,	166
82	,	245
83	,	245
84	,	368
85	,	372
91	,	353
92	,	286
93	,	286
95	,	204
96	,	204
97	,	253
98	,	175
99	,	255
100	,	276
102	,	276
103	,	333
105	,	393
106	,	391
110	,	371
111	,	373
112	,	366
113	,	385
114	,	393
123	,	390
124	,	353
125	,	353
128	,	353
132	,	353
134	,	373
135	,	374
136	,	260
137	,	242
139	,	241
140	,	219
141	,	187
142	,	178
147	,	178
149	,	178
152	,	178
153	,	200
155	,	180
156	,	279
157	,	338
162	,	392
164	,	276
165	,	333
169	,	366
170	,	371
174	,	373
176	,	373
178	,	373
181	,	390
182	,	373
191	,	277
192	,	311
193	,	373
194	,	313
198	,	276
199	,	353
200	,	370
201	,	265
202	,	225
203	,	225
204	,	225
206	,	225
207	,	224
208	,	224
209	,	224
210	,	224
211	,	224
212	,	225
213	,	345
214	,	353
215	,	335
216	,	334
217	,	311
218	,	265
219	,	342
220	,	382
226	,	276
227	,	333
228	,	391
229	,	366
230	,	371
247	,	277
251	,	276
252	,	276
253	,	333
254	,	353
255	,	373
257	,	288
258	,	205
259	,	205
260	,	185
262	,	166
263	,	187
264	,	187
265	,	207
266	,	207
267	,	207
275	,	305
276	,	353
278	,	373
279	,	390
284	,	276
285	,	333
286	,	391
287	,	187
294	,	366
295	,	168
296	,	168
297	,	288
298	,	288
299	,	353
300	,	373
301	,	390
302	,	373
311	,	353
312	,	289
313	,	225
314	,	201
317	,	161
318	,	185
319	,	166
320	,	166
321	,	225
322	,	245
323	,	245
324	,	368
325	,	372
331	,	353
332	,	286
333	,	204
335	,	204
336	,	247
337	,	253
338	,	255
339	,	255
340	,	276
342	,	276
343	,	333
345	,	393
346	,	391
350	,	371
351	,	373
352	,	366
353	,	385
361	,	390
362	,	373
371	,	353
372	,	289
373	,	225
374	,	225
377	,	201
378	,	185
379	,	166
380	,	166
381	,	166
382	,	206
383	,	245
384	,	368
385	,	372
391	,	353
392	,	286
393	,	204
395	,	204
396	,	247
397	,	253
398	,	255
399	,	255
400	,	276
402	,	276
403	,	333
405	,	393
406	,	391
410	,	371
411	,	373
412	,	366
413	,	385
424	,	385
425	,	345
429	,	353
430	,	311
437	,	225
438	,	309
439	,	285
440	,	286
444	,	286
452	,	225
453	,	143
455	,	225
456	,	183
457	,	183
458	,	183
459	,	124
460	,	7
462	,	7
463	,	55
464	,	276
465	,	333
474	,	366
475	,	373
476	,	353
478	,	353
479	,	373
480	,	373
481	,	390
482	,	373
491	,	353
492	,	289
493	,	225
494	,	201
497	,	201
498	,	185
499	,	166
500	,	166
501	,	166
502	,	245
503	,	245
504	,	368
505	,	372
511	,	353
512	,	286
513	,	204
515	,	204
516	,	247
517	,	253
518	,	175
519	,	255
520	,	276
522	,	276
523	,	333
525	,	393
526	,	391
530	,	371
531	,	373
532	,	366
533	,	385
543	,	390
544	,	353
545	,	353
548	,	353
552	,	353
554	,	353
555	,	374
556	,	260
557	,	242
559	,	241
560	,	219
561	,	219
562	,	178
567	,	178
569	,	178
572	,	178
573	,	200
575	,	180
576	,	279
577	,	338
582	,	392
584	,	276
585	,	333
589	,	366
590	,	371
594	,	373
596	,	373
598	,	373
601	,	390
602	,	373
613	,	373
614	,	313
615	,	277
618	,	276
619	,	353
620	,	370
621	,	265
622	,	225
623	,	225
624	,	225
626	,	225
627	,	224
628	,	224
629	,	224
630	,	224
631	,	224
632	,	345
633	,	353
634	,	335
635	,	335
636	,	334
637	,	311
638	,	265
639	,	342
640	,	382
646	,	276
647	,	333
648	,	391
649	,	366
650	,	371
671	,	276
672	,	276
673	,	333
674	,	353
675	,	373
677	,	288
678	,	205
679	,	205
680	,	185
682	,	166
683	,	187
684	,	187
685	,	207
686	,	227
687	,	305
695	,	305
696	,	353
698	,	373
699	,	390
704	,	276
705	,	333
706	,	391
707	,	187
714	,	366
715	,	167
716	,	168
717	,	288
718	,	288
719	,	353
720	,	373
721	,	390
722	,	373
731	,	353
732	,	289
733	,	225
734	,	201
737	,	161
738	,	185
739	,	166
740	,	166
741	,	225
742	,	245
743	,	245
744	,	368
745	,	372
751	,	353
752	,	286
753	,	204
755	,	204
756	,	247
757	,	253
758	,	255
759	,	255
760	,	276
762	,	276
763	,	333
765	,	393
766	,	391
770	,	371
771	,	373
772	,	366
773	,	385
781	,	390
782	,	373
791	,	353
792	,	289
793	,	225
794	,	225
797	,	201
798	,	185
799	,	166
800	,	166
801	,	166
802	,	206
803	,	245
804	,	368
805	,	372
811	,	353
812	,	286
813	,	204
815	,	204
816	,	247
817	,	253
818	,	255
819	,	255
820	,	276
822	,	276
823	,	333
825	,	393
826	,	391
830	,	371
831	,	373
832	,	366
833	,	385
844	,	385
845	,	345
849	,	353
850	,	311
857	,	225
858	,	309
859	,	285
860	,	286
864	,	286
872	,	225
873	,	143
875	,	225
876	,	183
877	,	183
878	,	183
879	,	124
880	,	7
882	,	7
883	,	55
884	,	276
885	,	333
894	,	366
895	,	373
896	,	353
898	,	353
899	,	373
900	,	373
901	,	390
902	,	373
911	,	353
912	,	289
913	,	225
914	,	201
917	,	201
918	,	185
919	,	166
920	,	166
921	,	166
922	,	245
923	,	245
924	,	368
925	,	372
931	,	353
932	,	286
933	,	204
935	,	204
936	,	247
937	,	253
938	,	175
939	,	255
940	,	276
942	,	276
943	,	333
945	,	393
946	,	391
950	,	371
951	,	373
952	,	366
953	,	385
963	,	390
964	,	353
965	,	353
968	,	353
972	,	353
974	,	353
975	,	374
976	,	260
977	,	242
979	,	241
980	,	219
981	,	219
982	,	178
987	,	178
989	,	178
992	,	178
993	,	200
995	,	180
996	,	279
997	,	338
1002	,	392
1004	,	276
1005	,	333
1009	,	366
1010	,	371
1014	,	373
1016	,	373
1018	,	373
1021	,	390
1022	,	373
1033	,	373
1034	,	313
1035	,	277
1038	,	276
1039	,	353
1040	,	370
1041	,	265
1042	,	225
1043	,	225
1044	,	225
1046	,	225
1047	,	224
1048	,	224
1049	,	224
1050	,	224
1051	,	224
1052	,	345
1053	,	353
1054	,	335
1055	,	335
1056	,	334
1057	,	311
1058	,	265
1059	,	342
1060	,	382
1066	,	276
1067	,	333
1068	,	391
1069	,	366
1070	,	371
1091	,	276
1092	,	276
1093	,	333
1094	,	353
1095	,	373
1097	,	288
1098	,	205
1099	,	205
1100	,	185
1102	,	166
1103	,	187
1104	,	187
1105	,	207
1106	,	227
1107	,	305
1115	,	305
1116	,	353
1118	,	373
1119	,	390
1124	,	276
1125	,	333
1126	,	391
1127	,	187
1134	,	366
1135	,	167
1136	,	168
1137	,	288
1138	,	288
1139	,	353
1140	,	373
1141	,	390
1142	,	373
1151	,	353
1152	,	289
1153	,	225
1154	,	201
1157	,	161
1158	,	185
1159	,	166
1160	,	166
1161	,	225
1162	,	245
1163	,	245
1164	,	368
1165	,	372
1171	,	353
1172	,	286
1173	,	204
1175	,	204
1176	,	247
1177	,	253
1178	,	255
1179	,	255
1180	,	276
1182	,	276
1183	,	333
1185	,	393
1186	,	391
1190	,	371
1191	,	373
1192	,	366
1193	,	385
1201	,	390
1202	,	373
1211	,	353
1212	,	289
1213	,	225
1214	,	225
1217	,	201
1218	,	185
1219	,	166
1220	,	166
1221	,	166
1222	,	206
1223	,	245
1224	,	368
1225	,	372
1231	,	353
1232	,	286
1233	,	204
1235	,	204
1236	,	247
1237	,	253
1238	,	255
1239	,	255
1240	,	276
1242	,	276
1243	,	333
1245	,	393
1246	,	391
1250	,	371
1251	,	373
1252	,	366
1253	,	385
];

j = 1;
k = 1;
l = 1;
m = 1;
n = 1;
o = 1;
q = 1;
r = 1;
s = 1;
t = 1;

for i = 1 : 642
   
    switch  mod( p(i, 1), 60)
        case {1,2,3,4,5,6}   
        a1(j) = p(i, 2)   ; 
        j = j + 1;       
        case {7,8,9,10,11,12}   
             a2(k) = p(i, 2)   ; 
        k = k + 1;
        case {13,14,15,16,17,18}
             a3(l) = p(i, 2)   ; 
        l = l + 1;              
        case {19,20,21,22,23,24}
             a4(m) = p(i, 2)   ; 
        m = m + 1;
        case {25,26,27,28,29,30}
             a5(n) = p(i, 2)   ; 
        n = n + 1;
        case {31,32,33,34,35,36}
             a6(o) = p(i, 2)   ; 
        o = o + 1;
        case {37,38,39,40,41,42}
             a7(q) = p(i, 2)   ; 
        q = q + 1;
        case {43,44,45,46,47,48}
             a8(r) = p(i, 2)   ; 
        r = r + 1;
        case {49,50,51,52,53,54}
             a9(s) = p(i, 2)   ; 
        s = s + 1;
        case {55,56,57,58,59,0}
             a10(t) = p(i, 2)   ; 
        t = t + 1;      
    end
end

s1 = tabulate(a1(:));      %统计各元素出现的频率
s1(s1(:,2)==0,:) = [];      %去掉空元素
b1 = sortrows(s1,size(s1,2),'descend');

s2 = tabulate(a2(:));
s2(s2(:,2)==0,:) = [];
b2 = sortrows(s2,size(s2,2),'descend');

s3 = tabulate(a3(:));
s3(s3(:,2)==0,:) = [];
b3 = sortrows(s3,size(s3,2),'descend');

s4 = tabulate(a4(:));
s4(s4(:,2)==0,:) = [];
b4 = sortrows(s4,size(s4,2),'descend');

s5 = tabulate(a5(:));
s5(s5(:,2)==0,:) = [];
b5 = sortrows(s5,size(s5,2),'descend');

s6 = tabulate(a6(:));
s6(s6(:,2)==0,:) = [];
b6 = sortrows(s6,size(s6,2),'descend');

s7 = tabulate(a7(:));
s7(s7(:,2)==0,:) = [];
b7 = sortrows(s7,size(s7,2),'descend');

s8 = tabulate(a8(:));
s8(s8(:,2)==0,:) = [];
b8 = sortrows(s8,size(s8,2),'descend');

s9 = tabulate(a9(:));
s9(s9(:,2)==0,:) = [];
b9 = sortrows(s9,size(s9,2),'descend');

s10 = tabulate(a10(:));
s10(s10(:,2)==0,:) = [];
b10 = sortrows(s10,size(s10,2),'descend');


N = zeros(1, 30);     %统计轨迹       %%%%%%  top n
P = zeros(1,10);      %选出概率
Q =  zeros(1, 10);      %时段出现位置长度
n = zeros(30, 2);       %统计轨迹二维坐标     %%%%%%%% top n
%j = 1;
          Q(1) = length(b1);
          Q(2) = length(b2);
          Q(3) = length(b3);         
          Q(4) = length(b4);          
          Q(5) = length(b5);
          Q(6) = length(b6);              
          Q(7) = length(b7);              
          Q(8) = length(b8);              
          Q(9) = length(b9);
          Q(10) = length(b10);            
            
            
for i =1 : 3                               %%%%%%  top n 
    
   N(i) = b1(i, 1);
      P(1) = P(1) + b1(i, 3);    
  
   N(i+3) = b2(i, 1);                      %%%%%%%  top n
      P(2) = P(2) + b2(i, 3);
  
   N(i+6) = b3(i, 1);                     %%%%  top n
      P(3) = P(3) + b3(i, 3);

   N(i+9) = b4(i, 1);
      P(4) = P(4) + b4(i, 3);

   N(i+12) = b5(i, 1);
      P(5) = P(5) + b5(i, 3);

   N(i+15) = b6(i, 1);
      P(6) = P(6) + b6(i, 3);

   N(i+18) = b7(i, 1);
      P(7) = P(7) + b7(i, 3);

   N(i+21) = b8(i, 1);
      P(8) = P(8) + b8(i, 3);

   N(i+24) = b9(i, 1);
      P(9) = P(9) + b9(i, 3);

   N(i+27) = b10(i, 1);
       P(10) = P(10) + b10(i, 3);
   % j = j+1;
end
W = zeros(1, 10);
for i = 1: 10
    W(i) = 3/Q(i);     %%%%%%  top n
    
end
E = zeros(1, 10);
for i = 1: 10
    E(i) = P(i)/100/W(i);

end

n = LtoG_V(N);

   n1 = [n(1, :),n(2, :),n(3, :),n(4, :),n(5, :),n(6, :),n(7, :),n(8, :),n(9, :),n(10, :),n(11, :),n(12, :),n(13, :),n(14, :),n(15, :),n(16, :),n(17, :),n(18, :),n(19, :),n(20, :),n(21, :),n(22, :),n(23, :),n(24, :),n(25, :),n(26, :),n(27, :),n(28, :),n(29, :),n(30, :)];

   
for i = 1:10
    P(i) = P(i)/100;
end
   

i = 1:10;
plot(i, P);
xlabel('t');
ylabel('Probability proportion');

i = 1:10;
plot(i, E);
xlabel('t');
ylabel('P-N proportion');



 
N
P
Q
% 
% a1
% a2
% a3
% a4
% a5
% a6
% a7
% a8
% a9
% a10

