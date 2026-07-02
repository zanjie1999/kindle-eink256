.class Lcom/amazon/kcp/home/ui/ShovelerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ShovelerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/ui/ShovelerView;->setShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/ui/ShovelerView;

.field final synthetic val$spacing:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/ui/ShovelerView;I)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ShovelerView$2;->this$0:Lcom/amazon/kcp/home/ui/ShovelerView;

    iput p2, p0, Lcom/amazon/kcp/home/ui/ShovelerView$2;->val$spacing:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 116
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eq p2, p3, :cond_0

    .line 117
    iget p2, p0, Lcom/amazon/kcp/home/ui/ShovelerView$2;->val$spacing:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method
