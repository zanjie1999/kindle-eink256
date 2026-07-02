.class public final Lcom/amazon/kcp/home/widget/BookViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BookEntityShovelerAdapter.kt"


# instance fields
.field private final cover:Lcom/amazon/kcp/home/ui/BookEntityCover;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/ui/BookEntityCover;)V
    .locals 1

    const-string v0, "cover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookViewHolder;->cover:Lcom/amazon/kcp/home/ui/BookEntityCover;

    return-void
.end method


# virtual methods
.method public final getCover()Lcom/amazon/kcp/home/ui/BookEntityCover;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookViewHolder;->cover:Lcom/amazon/kcp/home/ui/BookEntityCover;

    return-object v0
.end method
