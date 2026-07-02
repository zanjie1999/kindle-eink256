.class Lcom/amazon/kcp/library/fragments/HeaderGridView$2;
.super Ljava/lang/Object;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/HeaderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/HeaderGridView;

.field final synthetic val$clickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/HeaderGridView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$2;->this$0:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$2;->val$clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$2;->this$0:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$2;->this$0:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    mul-int v0, v0, v1

    sub-int v4, p3, v0

    .line 363
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView$2;->val$clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
