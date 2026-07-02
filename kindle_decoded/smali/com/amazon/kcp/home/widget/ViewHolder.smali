.class public final Lcom/amazon/kcp/home/widget/ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShovelerWidgetAdapter.kt"


# instance fields
.field private final cover:Lcom/amazon/kcp/cover/BadgeableCover;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/cover/BadgeableCover;)V
    .locals 1

    const-string v0, "cover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ViewHolder;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    return-void
.end method


# virtual methods
.method public final getCover()Lcom/amazon/kcp/cover/BadgeableCover;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ViewHolder;->cover:Lcom/amazon/kcp/cover/BadgeableCover;

    return-object v0
.end method
