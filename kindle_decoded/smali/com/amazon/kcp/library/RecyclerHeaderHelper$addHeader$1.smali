.class public final Lcom/amazon/kcp/library/RecyclerHeaderHelper$addHeader$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "RecyclerHeaderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/RecyclerHeaderHelper;->addHeader(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kcp/library/RecyclerHeader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic this$0:Lcom/amazon/kcp/library/RecyclerHeaderHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/RecyclerHeaderHelper;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            ")V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper$addHeader$1;->this$0:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper$addHeader$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper$addHeader$1;->this$0:Lcom/amazon/kcp/library/RecyclerHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/RecyclerHeaderHelper;->isPositionHeader(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerHeaderHelper$addHeader$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
