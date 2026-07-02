.class public final Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "StickyHeaderItemDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;-><init>(Landroidx/recyclerview/widget/RecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$1;->this$0:Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration$1;->this$0:Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;->access$setCurrentHeader$p(Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;Lkotlin/Pair;)V

    return-void
.end method
