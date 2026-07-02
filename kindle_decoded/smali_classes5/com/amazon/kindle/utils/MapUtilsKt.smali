.class public final Lcom/amazon/kindle/utils/MapUtilsKt;
.super Ljava/lang/Object;
.source "MapUtils.kt"


# direct methods
.method public static final findInMapOrRun(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KEY:",
            "Ljava/lang/Object;",
            "VA",
            "LUE:Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TKEY;+TVA",
            "LUE;",
            ">;TKEY;",
            "Lkotlin/jvm/functions/Function0<",
            "+TVA",
            "LUE;",
            ">;)TVA",
            "LUE;"
        }
    .end annotation

    const-string v0, "$this$findInMapOrRun"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "runIfNull"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 10
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
