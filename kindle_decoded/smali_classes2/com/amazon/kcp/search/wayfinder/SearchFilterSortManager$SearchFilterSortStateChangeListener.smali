.class public interface abstract Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;
.super Ljava/lang/Object;
.source "SearchFilterSortManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchFilterSortStateChangeListener"
.end annotation


# virtual methods
.method public abstract onUpdatedStoreFilterSortState(Ljava/util/List;Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ")V"
        }
    .end annotation
.end method
