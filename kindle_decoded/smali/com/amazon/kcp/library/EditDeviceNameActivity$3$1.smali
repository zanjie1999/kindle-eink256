.class Lcom/amazon/kcp/library/EditDeviceNameActivity$3$1;
.super Ljava/lang/Object;
.source "EditDeviceNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/EditDeviceNameActivity$3;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/EditDeviceNameActivity$3;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3$1;->this$1:Lcom/amazon/kcp/library/EditDeviceNameActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3$1;->this$1:Lcom/amazon/kcp/library/EditDeviceNameActivity$3;

    iget-object v0, v0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->edit_device_name_success:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
