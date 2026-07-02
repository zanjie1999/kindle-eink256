.class Lkotlin/text/StringsKt___StringsKt;
.super Lkotlin/text/StringsKt___StringsJvmKt;
.source "_Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Strings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,2371:1\n95#1,2:2372\n183#1,5:2374\n471#1,5:2380\n471#1,5:2385\n431#1:2390\n1148#1,2:2391\n432#1,2:2393\n1150#1:2395\n434#1:2396\n431#1:2397\n1148#1,2:2398\n432#1,2:2400\n1150#1:2402\n434#1:2403\n1148#1,3:2404\n461#1,2:2407\n461#1,2:2409\n719#1,4:2411\n688#1,4:2415\n704#1,4:2419\n751#1,4:2423\n851#1,5:2427\n892#1,3:2432\n895#1,3:2442\n910#1,3:2445\n913#1,3:2455\n1010#1,3:2472\n980#1,4:2475\n969#1:2479\n1148#1,2:2480\n1150#1:2483\n970#1:2484\n1148#1,3:2485\n1001#1:2488\n1139#1:2489\n1140#1:2491\n1002#1:2492\n1139#1,2:2493\n1171#1,14:2495\n1408#1,14:2509\n1148#1,3:2523\n1857#1,2:2526\n1859#1,6:2529\n1881#1,2:2535\n1883#1,6:2538\n1904#1,3:2544\n1907#1,5:2548\n1928#1,3:2553\n1931#1,5:2557\n2316#1,6:2562\n2346#1,7:2568\n1#2:2379\n1#2:2482\n1#2:2490\n1#2:2528\n1#2:2537\n1#2:2547\n1#2:2556\n355#3,7:2435\n355#3,7:2448\n355#3,7:2458\n355#3,7:2465\n*E\n*S KotlinDebug\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n52#1,2:2372\n62#1,5:2374\n389#1,5:2380\n398#1,5:2385\n409#1:2390\n409#1,2:2391\n409#1,2:2393\n409#1:2395\n409#1:2396\n420#1:2397\n420#1,2:2398\n420#1,2:2400\n420#1:2402\n420#1:2403\n431#1,3:2404\n443#1,2:2407\n452#1,2:2409\n646#1,4:2411\n661#1,4:2415\n675#1,4:2419\n738#1,4:2423\n811#1,5:2427\n867#1,3:2432\n867#1,3:2442\n880#1,3:2445\n880#1,3:2455\n939#1,3:2472\n949#1,4:2475\n959#1:2479\n959#1,2:2480\n959#1:2483\n959#1:2484\n969#1,3:2485\n993#1:2488\n993#1:2489\n993#1:2491\n993#1:2492\n1001#1,2:2493\n1161#1,14:2495\n1398#1,14:2509\n1661#1,3:2523\n1952#1,2:2526\n1952#1,6:2529\n1970#1,2:2535\n1970#1,6:2538\n1977#1,3:2544\n1977#1,5:2548\n1984#1,3:2553\n1984#1,5:2557\n2305#1,6:2562\n2333#1,7:2568\n959#1:2482\n993#1:2490\n1952#1:2528\n1970#1:2537\n1977#1:2547\n1984#1:2556\n867#1,7:2435\n880#1,7:2448\n894#1,7:2458\n912#1,7:2465\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/StringsKt___StringsJvmKt;-><init>()V

    return-void
.end method

.method public static drop(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$drop"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 307
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested character count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static takeLast(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$takeLast"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 562
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 560
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested character count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
