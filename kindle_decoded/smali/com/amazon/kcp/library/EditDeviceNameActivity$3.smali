.class Lcom/amazon/kcp/library/EditDeviceNameActivity$3;
.super Ljava/lang/Object;
.source "EditDeviceNameActivity.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/EditDeviceNameActivity;->requestRenameDevice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

.field final synthetic val$newDeviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/EditDeviceNameActivity;Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->val$newDeviceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "error_code_key"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 123
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    const v3, 0x108009b

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 138
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string v0, "UnknownError"

    invoke-interface {p1, v0, v2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->edit_device_name_error_used:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcom/amazon/kcp/library/ConfirmationDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/kcp/library/ConfirmationDialogFragment;

    move-result-object p1

    .line 135
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "EditDeviceNameActivity_AlreadyUsed"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->edit_device_name_error_invalid:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcom/amazon/kcp/library/ConfirmationDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/kcp/library/ConfirmationDialogFragment;

    move-result-object p1

    .line 131
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "EditDeviceNameActivity_Invalid"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string v0, "ConnectionError"

    invoke-interface {p1, v0, v2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    invoke-static {p1}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->access$200(Lcom/amazon/kcp/library/EditDeviceNameActivity;)Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->val$newDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->access$100(Lcom/amazon/kcp/library/EditDeviceNameActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    new-instance v0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/EditDeviceNameActivity$3$1;-><init>(Lcom/amazon/kcp/library/EditDeviceNameActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    iget-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 109
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenameDevice"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;->getInstance()Lcom/amazon/kindle/setting/item/ItemsRepository;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/setting/item/ItemsRepository;->refresh()V

    .line 116
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsRepositoryManager;->getInstance()Lcom/amazon/kindle/setting/item/ItemsRepository;

    move-result-object p1

    const-string/jumbo v0, "setting_item_device_name"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/setting/item/ItemsRepository;->findItemByID(Ljava/lang/String;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    .line 117
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void
.end method
