.class public Lcom/amazon/kcp/search/views/RubySearchListView;
.super Lcom/amazon/kcp/search/views/SearchListView;
.source "RubySearchListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/views/SearchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/amazon/kcp/search/views/SearchResultsAdapter;
    .locals 2

    .line 13
    new-instance v0, Lcom/amazon/kcp/search/views/RubySearchResultsAdapter;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/views/RubySearchResultsAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
