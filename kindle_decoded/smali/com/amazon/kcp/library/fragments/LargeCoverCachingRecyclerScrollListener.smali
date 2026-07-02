.class public final Lcom/amazon/kcp/library/fragments/LargeCoverCachingRecyclerScrollListener;
.super Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;
.source "LargeCoverCachingRecyclerScrollListener.kt"


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/AbstractRecyclerAdapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/AbstractRecyclerAdapter<",
            "**>;",
            "Lcom/amazon/kcp/cover/ICoverCacheManager;",
            "Lcom/amazon/kindle/util/drawing/Dimension;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDimension"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;-><init>(Lcom/amazon/kcp/library/AbstractRecyclerAdapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V

    return-void
.end method


# virtual methods
.method public getBookId(I)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->getAdapter()Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 17
    instance-of v0, p1, Lcom/amazon/kindle/observablemodel/ItemID;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->itemIdToBookId(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
