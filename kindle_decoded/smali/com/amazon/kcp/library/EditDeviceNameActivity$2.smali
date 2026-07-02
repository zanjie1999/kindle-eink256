.class Lcom/amazon/kcp/library/EditDeviceNameActivity$2;
.super Ljava/lang/Object;
.source "EditDeviceNameActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/EditDeviceNameActivity;->initEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/EditDeviceNameActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$2;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$2;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    invoke-static {p2, p1}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->access$000(Lcom/amazon/kcp/library/EditDeviceNameActivity;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
