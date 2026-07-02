.class final Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;
.super Ljava/lang/Object;
.source "SearchFilterSortManager.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->setupSortMenu$KindleSearch_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sortButton:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    iput-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;->$sortButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 199
    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->getSortMenu$KindleSearch_release()Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    .line 200
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-static {v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->access$getActivity$p(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;)Landroid/app/Activity;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;->$sortButton:Landroid/view/View;

    .line 202
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->sort_kindle_store:I

    .line 203
    iget-object v4, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {v4}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->getSortMenuProvider$KindleSearch_release()Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    move-result-object v4

    .line 199
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;-><init>(Landroid/app/Activity;Landroid/view/View;ILcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->setSortMenu$KindleSearch_release(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)V

    .line 205
    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->getSortMenu$KindleSearch_release()Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->show()V

    :cond_1
    return-void
.end method
