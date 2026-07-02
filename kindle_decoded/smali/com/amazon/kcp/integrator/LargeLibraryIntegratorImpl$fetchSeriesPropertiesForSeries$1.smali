.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesPropertiesForSeries$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LargeLibraryIntegratorImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->fetchSeriesPropertiesForSeries(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/amazon/kindle/content/GroupMetadata;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesPropertiesForSeries$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesPropertiesForSeries$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesPropertiesForSeries$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Integer;

    const/16 v3, 0x10

    .line 848
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v3, v2, v4

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const/4 v8, 0x2

    aput-object v5, v2, v8

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 849
    iget-object v9, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesPropertiesForSeries$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v9}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 847
    invoke-static {v0, p1, v2, v9, v10}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$processSeriesFetchResults(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 850
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isNarrativesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesPropertiesForSeries$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    new-array v1, v1, [Ljava/lang/Integer;

    aput-object v3, v1, v4

    aput-object v6, v1, v7

    aput-object v5, v1, v8

    .line 853
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 858
    iget-object v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesPropertiesForSeries$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$getCurrentAccount$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-static {v0, p1, v1, v2, v10}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$processNarrativeByTitleFetchResults(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Lcom/amazon/kcp/integrator/Batch;)V

    .line 861
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl$fetchSeriesPropertiesForSeries$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->access$flushChangesForFetch(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;)V

    return-void
.end method
