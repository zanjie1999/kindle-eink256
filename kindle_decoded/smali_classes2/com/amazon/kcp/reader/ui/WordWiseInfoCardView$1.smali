.class Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$1;
.super Ljava/lang/Object;
.source "WordWiseInfoCardView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 296
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 297
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p3, "item"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardView;)Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;

    move-result-object p1

    sget-object p3, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;->LIST:Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;

    invoke-virtual {p1, p3, p2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardController;->onClick(Lcom/amazon/kcp/reader/ui/WordWiseInfoCardViewEnum;Landroid/os/Bundle;)V

    return-void
.end method
