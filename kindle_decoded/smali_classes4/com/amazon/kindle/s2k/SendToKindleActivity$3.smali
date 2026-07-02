.class Lcom/amazon/kindle/s2k/SendToKindleActivity$3;
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

    .line 706
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$3;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 709
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$3;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    sget v0, Lcom/amazon/kindle/s2k/R$id;->stk_archive_checkBox:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 710
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$3;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$400(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$3;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$402(Lcom/amazon/kindle/s2k/SendToKindleActivity;Z)Z

    .line 713
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, -0x808182

    .line 714
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$3;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$402(Lcom/amazon/kindle/s2k/SendToKindleActivity;Z)Z

    .line 719
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, -0x2b2b2c

    .line 720
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 722
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$3;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->checkIfDevicesSelected()V

    return-void
.end method
