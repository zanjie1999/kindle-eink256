.class public final Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$OnFilterSortItemClickListener;
.super Ljava/lang/Object;
.source "SearchSortFilterMenu.kt"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnFilterSortItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$OnFilterSortItemClickListener;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 253
    invoke-interface {p1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    instance-of p3, p1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, p1

    :goto_2
    check-cast p2, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    if-nez p2, :cond_3

    const/4 p1, 0x0

    return p1

    .line 258
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$OnFilterSortItemClickListener;->this$0:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    invoke-static {p1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->access$getMenuProvider$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->toggleItem(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V

    const/4 p1, 0x1

    return p1
.end method
