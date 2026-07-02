.class final Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;
.super Ljava/lang/Object;
.source "NISWidget.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/NISWidget;->updateBuyButton(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $displayText:Ljava/lang/String;

.field final synthetic $enabled:Z

.field final synthetic $infoText:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/NISWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/NISWidget;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->this$0:Lcom/amazon/kcp/home/widget/NISWidget;

    iput-boolean p2, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->$enabled:Z

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->$displayText:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->$infoText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->this$0:Lcom/amazon/kcp/home/widget/NISWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/NISWidget;->access$getBuyButton$p(Lcom/amazon/kcp/home/widget/NISWidget;)Landroid/widget/Button;

    move-result-object v0

    .line 222
    iget-boolean v1, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->$displayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->this$0:Lcom/amazon/kcp/home/widget/NISWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/NISWidget;->access$getBuyInfoView$p(Lcom/amazon/kcp/home/widget/NISWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->$infoText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->this$0:Lcom/amazon/kcp/home/widget/NISWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/NISWidget;->access$getBuyInfoView$p(Lcom/amazon/kcp/home/widget/NISWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/NISWidget$updateBuyButton$1;->$infoText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 228
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
