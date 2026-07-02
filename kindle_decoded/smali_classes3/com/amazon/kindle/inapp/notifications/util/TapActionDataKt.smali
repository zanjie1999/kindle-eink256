.class public final Lcom/amazon/kindle/inapp/notifications/util/TapActionDataKt;
.super Ljava/lang/Object;
.source "TapActionData.kt"


# direct methods
.method public static final toMap(Lcom/amazon/kindle/inapp/notifications/util/TapActionData;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/inapp/notifications/util/TapActionData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/Pair;

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asin"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 16
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getFeaturePageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "featurePageId"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 17
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "storeUrl"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 18
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getChannelId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelId"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getFallbackAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fallbackAction"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getFallbackData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fallbackData"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 21
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getBrowseNode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "browseNode"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 22
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getCustomActionData()Ljava/lang/String;

    move-result-object p0

    const-string v1, "customActionData"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 14
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
