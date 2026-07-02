.class Lcom/amazon/device/ads/AdControlAccessor;
.super Ljava/lang/Object;
.source "AdControlAccessor.java"


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdController;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    return-void
.end method

.method public closeAd()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    move-result v0

    return v0
.end method

.method public deregisterViewabilityInterest()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->deregisterViewabilityInterest()V

    return-void
.end method

.method public enableCloseButton(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    return-void
.end method

.method public enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdController;->enableNativeCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    return-void
.end method

.method public fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    return-void
.end method

.method public getAdActivity()Landroid/app/Activity;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getAdState()Lcom/amazon/device/ads/AdState;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()Lcom/amazon/device/ads/Position;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    return-object v0
.end method

.method public getInstrumentationPixelUrl()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getInstrumentationPixelUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()Lcom/amazon/device/ads/Size;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMaxExpandableSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScalingMultiplier()D
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenSize()Lcom/amazon/device/ads/Size;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getScreenSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSlotID()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getSlotID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowHeight()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getWindowHeight()I

    move-result v0

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getWindowWidth()I

    move-result v0

    return v0
.end method

.method public injectJavascript(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/AdController;->injectJavascript(Ljava/lang/String;Z)V

    return-void
.end method

.method public injectJavascriptPreload(Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/AdController;->injectJavascript(Ljava/lang/String;Z)V

    return-void
.end method

.method public isInterstitial()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isInterstitial()Z

    move-result v0

    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isModal()Z

    move-result v0

    return v0
.end method

.method public isViewable()Z
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isViewable()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/device/ads/AdController;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdController;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public onBackButtonPress()Z
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->onBackButtonPress()Z

    move-result v0

    return v0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public orientationChangeAttemptedWhenNotAllowed()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->orientationChangeAttemptedWhenNotAllowed()V

    return-void
.end method

.method public overrideBackButton(Z)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->overrideBackButton(Z)V

    return-void
.end method

.method public popView()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->popView()Z

    move-result v0

    return v0
.end method

.method public preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdController;->preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    return-void
.end method

.method public registerViewabilityInterest()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->registerViewabilityInterest()V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->reload()V

    return-void
.end method

.method public removeCloseButton()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->removeNativeCloseButton()V

    return-void
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setAdActivity(Landroid/app/Activity;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setAdActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public showNativeCloseButtonImage(Z)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->showNativeCloseButtonImage(Z)V

    return-void
.end method

.method public stashView()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->stashView()V

    return-void
.end method
