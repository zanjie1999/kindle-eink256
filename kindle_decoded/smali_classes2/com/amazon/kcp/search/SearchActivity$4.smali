.class Lcom/amazon/kcp/search/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchActivity;->setUpFilterSortBarManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchActivity;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$4;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdatedStoreFilterSortState(Ljava/util/List;Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V
    .locals 1
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

    .line 1016
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$4;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchActivity;->logMetricsOnFilterSortSelection()V

    .line 1020
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity$4;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/search/SearchProvider;->refreshStoreSearchWithFilterSort(Ljava/util/List;Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V

    .line 1024
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity$4;->this$0:Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    return-void
.end method
