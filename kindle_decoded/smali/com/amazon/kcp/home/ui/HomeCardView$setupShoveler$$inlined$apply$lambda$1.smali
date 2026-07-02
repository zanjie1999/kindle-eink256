.class public final Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$$inlined$apply$lambda$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HomeCardView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/ui/HomeCardView;->setupShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

.field final synthetic this$0:Lcom/amazon/kcp/home/ui/HomeCardView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/NestedRecyclerView;Lcom/amazon/kcp/home/ui/HomeCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$$inlined$apply$lambda$1;->$this_apply:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    iput-object p2, p0, Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/ui/HomeCardView;

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    .line 60
    iget-object p1, p0, Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/ui/HomeCardView;

    iget-object p2, p0, Lcom/amazon/kcp/home/ui/HomeCardView$setupShoveler$$inlined$apply$lambda$1;->$this_apply:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/home/ui/HomeCardView;->setLastVisibleShovelerItemPosition$LibraryModule_release(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
