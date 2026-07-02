.class Lcom/amazon/kcp/reader/ui/ViewOptionData$3;
.super Ljava/lang/Object;
.source "ViewOptionData.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ViewOptionData;->createOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 231
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->access$200(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 232
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->access$202(Lcom/amazon/kcp/reader/ui/ViewOptionData;Z)Z

    return-void

    .line 236
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getSelectedIndex()I

    move-result p2

    if-eq p2, p3, :cond_1

    .line 237
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {p2, p1, p3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->onSpinnerItemSelected(Landroid/widget/AdapterView;I)V

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 240
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->access$300(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object p1

    iget-boolean p1, p1, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->isDropDownnMenuShown:Z

    if-eqz p1, :cond_2

    .line 241
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionData$3;->this$0:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->access$300(Lcom/amazon/kcp/reader/ui/ViewOptionData;)Lcom/amazon/kcp/reader/ui/ViewOptionsRow;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->isDropDownnMenuShown:Z

    :cond_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
