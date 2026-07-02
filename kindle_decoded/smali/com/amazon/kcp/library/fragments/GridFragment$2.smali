.class Lcom/amazon/kcp/library/fragments/GridFragment$2;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/GridFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/GridFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment$2;->this$0:Lcom/amazon/kcp/library/fragments/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment$2;->this$0:Lcom/amazon/kcp/library/fragments/GridFragment;

    move-object v1, p1

    check-cast v1, Lcom/amazon/kcp/library/fragments/HeaderGridView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/library/fragments/GridFragment;->onGridItemClick(Lcom/amazon/kcp/library/fragments/HeaderGridView;Landroid/view/View;IJ)V

    return-void
.end method
