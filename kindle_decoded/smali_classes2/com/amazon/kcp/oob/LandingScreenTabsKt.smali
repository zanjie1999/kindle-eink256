.class public final Lcom/amazon/kcp/oob/LandingScreenTabsKt;
.super Ljava/lang/Object;
.source "LandingScreenTabs.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLandingScreenTabs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LandingScreenTabs.kt\ncom/amazon/kcp/oob/LandingScreenTabsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,36:1\n1819#2,2:37\n1504#2:39\n1517#2:47\n1588#2,3:48\n509#3:40\n494#3,6:41\n*E\n*S KotlinDebug\n*F\n+ 1 LandingScreenTabs.kt\ncom/amazon/kcp/oob/LandingScreenTabsKt\n*L\n26#1,2:37\n31#1:39\n33#1:47\n33#1,3:48\n31#1:40\n31#1,6:41\n*E\n"
.end annotation


# direct methods
.method public static final discoverAndSort(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/LandingScreenTab;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-class v0, Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    new-instance v1, Lcom/amazon/kcp/oob/LandingScreenTabsKt$discoverAndSort$result$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/oob/LandingScreenTabsKt$discoverAndSort$result$1;-><init>(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)V

    invoke-static {v0, v1}, Lcom/amazon/kindle/utils/DiscoveryUtilsKt;->discoverAndSortByPriority(Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    .line 19
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0}, Lcom/amazon/kcp/oob/LandingScreenTabsKt;->validate(Ljava/util/List;)V

    :cond_0
    return-object p0
.end method

.method private static final validate(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/ui/LandingScreenTab;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    .line 27
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.getId()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty ID, tab: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_2
    new-instance v0, Lcom/amazon/kcp/oob/LandingScreenTabsKt$validate$$inlined$groupingBy$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/oob/LandingScreenTabsKt$validate$$inlined$groupingBy$1;-><init>(Ljava/lang/Iterable;)V

    .line 31
    invoke-static {v0}, Lkotlin/collections/GroupingKt;->eachCount(Lkotlin/collections/Grouping;)Ljava/util/Map;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-le v5, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 40
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate IDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", all IDs: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 49
    check-cast v2, Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    .line 33
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 47
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method
