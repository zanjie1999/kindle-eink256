.class Lcom/amazon/kcp/search/views/SearchRecyclerView$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SearchRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/SearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/SearchRecyclerView;Landroid/content/Context;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView$1;->this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
