.class public Lcom/amazon/kindle/nln/NlnTransitionHelper;
.super Ljava/lang/Object;
.source "NlnTransitionHelper.java"


# direct methods
.method public static getFullscreenRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p0

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static transitionToBirdsEye()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    :cond_0
    return-void
.end method

.method public static transitionToFullPage()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    :cond_0
    return-void
.end method

.method public static transitionToPageFlip()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->showNLNContentFragment(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    :cond_0
    return-void
.end method
