.class Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreWebViewHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment;Landroid/app/Activity;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    .line 489
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getOptions()Landroid/os/Bundle;
    .locals 4

    .line 494
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IRegistrationManager;->getWebviewOptions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.amazon.identity.ap.request.parameters"

    .line 498
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getPageId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pageIdOverride"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper$1;-><init>(Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 520
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "ON_REGISTRATION_SUCCESS"

    .line 521
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/amazon/kcp/store/StoreFragment;->reloadPostAuth:Z

    .line 523
    new-instance p2, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;

    .line 524
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 525
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;Z)V

    .line 526
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->execute(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ON_UNABLE_TO_GET_COOKIES"

    .line 530
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 532
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kcp/application/IRegistrationManager;->tryHandle3pLoginCode(Landroid/os/Bundle;Landroid/app/Activity;)Z

    :cond_1
    return-void
.end method
