.class public final Lcom/amazon/kindle/utils/DiscoveryUtilsKt;
.super Ljava/lang/Object;
.source "DiscoveryUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoveryUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoveryUtils.kt\ncom/amazon/kindle/utils/DiscoveryUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,17:1\n1013#2:18\n*E\n*S KotlinDebug\n*F\n+ 1 DiscoveryUtils.kt\ncom/amazon/kindle/utils/DiscoveryUtilsKt\n*L\n15#1:18\n*E\n"
.end annotation


# direct methods
.method public static final discoverAndSortByPriority(Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "contract"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "priorityFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p0

    const-string v0, "Discoveries.of(contract)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/amazon/kindle/utils/DiscoveryUtilsKt$discoverAndSortByPriority$$inlined$sortedBy$1;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/utils/DiscoveryUtilsKt$discoverAndSortByPriority$$inlined$sortedBy$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
