.class public Lcom/amazon/kcp/store/StoreActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "StoreActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/store/IWebStoreController;->showStore(Landroid/os/Bundle;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->showLandingPage()V

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
