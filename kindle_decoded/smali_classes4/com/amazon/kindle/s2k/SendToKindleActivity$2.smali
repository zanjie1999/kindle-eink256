.class Lcom/amazon/kindle/s2k/SendToKindleActivity$2;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$2;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 684
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "wan button clicked"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 686
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$2;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    sget v0, Lcom/amazon/kindle/s2k/R$id;->wifi_button:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 687
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$2;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    sget v1, Lcom/amazon/kindle/s2k/R$id;->whispernet_button:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 688
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$2;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    sget v2, Lcom/amazon/kindle/s2k/R$id;->whispernet_charges_text:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 690
    sget v2, Lcom/amazon/kindle/s2k/R$drawable;->wifi_inactive:I

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v2, -0x666667

    .line 691
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 692
    sget p1, Lcom/amazon/kindle/s2k/R$drawable;->whispernet_active:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 p1, -0x6700

    .line 693
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x0

    .line 694
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 696
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 697
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$2;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v0, p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$202(Lcom/amazon/kindle/s2k/SendToKindleActivity;Z)Z

    .line 701
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$2;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$300(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    return-void
.end method
