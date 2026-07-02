.class Lcom/amazon/device/ads/AdContainer;
.super Landroid/widget/FrameLayout;
.source "AdContainer.java"

# interfaces
.implements Lcom/amazon/device/ads/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdContainer$AdContainerFactory;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_AD_CONTAINER:Ljava/lang/String; = "adContainerObject"


# instance fields
.field private allowClicks:Z

.field private baseUrl:Ljava/lang/String;

.field private disableHardwareAcceleration:Z

.field private html:Ljava/lang/String;

.field private final nativeCloseButton:Lcom/amazon/device/ads/NativeCloseButton;

.field private preloadCallback:Lcom/amazon/device/ads/PreloadCallback;

.field private shouldPreload:Z

.field private viewManager:Lcom/amazon/device/ads/ViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdCloser;)V
    .locals 2

    .line 37
    new-instance v0, Lcom/amazon/device/ads/ViewManagerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/ViewManagerFactory;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/device/ads/AdContainer;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/ViewManagerFactory;Lcom/amazon/device/ads/NativeCloseButton;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdCloser;Lcom/amazon/device/ads/ViewManagerFactory;Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdContainer;->disableHardwareAcceleration:Z

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdContainer;->allowClicks:Z

    .line 48
    invoke-virtual {p3, p0}, Lcom/amazon/device/ads/ViewManagerFactory;->withViewGroup(Landroid/view/ViewGroup;)Lcom/amazon/device/ads/ViewManagerFactory;

    invoke-virtual {p3}, Lcom/amazon/device/ads/ViewManagerFactory;->createViewManager()Lcom/amazon/device/ads/ViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    const-string p1, "adContainerObject"

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p4, :cond_0

    .line 52
    new-instance p1, Lcom/amazon/device/ads/NativeCloseButton;

    invoke-direct {p1, p0, p2}, Lcom/amazon/device/ads/NativeCloseButton;-><init>(Landroid/view/ViewGroup;Lcom/amazon/device/ads/AdCloser;)V

    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer;->nativeCloseButton:Lcom/amazon/device/ads/NativeCloseButton;

    goto :goto_0

    .line 56
    :cond_0
    iput-object p4, p0, Lcom/amazon/device/ads/AdContainer;->nativeCloseButton:Lcom/amazon/device/ads/NativeCloseButton;

    :goto_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/ViewManager;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    return-void
.end method

.method public canShowViews()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->canShowViews()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->destroy()V

    return-void
.end method

.method public disableHardwareAcceleration(Z)V
    .locals 1

    .line 87
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdContainer;->disableHardwareAcceleration:Z

    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->disableHardwareAcceleration(Z)V

    :cond_0
    return-void
.end method

.method public enableNativeCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->nativeCloseButton:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/NativeCloseButton;->enable(ZLcom/amazon/device/ads/RelativePosition;)V

    return-void
.end method

.method public getCurrentAdView()Landroid/webkit/WebView;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->getCurrentAdView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public getViewLocationOnScreen([I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->getLocationOnScreen([I)V

    return-void
.end method

.method public getViewWidth()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdContainer;->disableHardwareAcceleration:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ViewManager;->disableHardwareAcceleration(Z)V

    .line 69
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->initialize()V

    return-void
.end method

.method public injectJavascript(Ljava/lang/String;Z)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/device/ads/ViewManager;->loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    return-void
.end method

.method public isCurrentView(Landroid/view/View;)Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->isCurrentView(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public listenForKey(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->listenForKey(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 8

    .line 149
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer;->baseUrl:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/amazon/device/ads/AdContainer;->html:Ljava/lang/String;

    .line 151
    iput-boolean p3, p0, Lcom/amazon/device/ads/AdContainer;->shouldPreload:Z

    .line 152
    iput-object p4, p0, Lcom/amazon/device/ads/AdContainer;->preloadCallback:Lcom/amazon/device/ads/PreloadCallback;

    .line 159
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/device/ads/ViewManager;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 260
    iget-boolean p1, p0, Lcom/amazon/device/ads/AdContainer;->allowClicks:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public popView()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->popView()Z

    move-result v0

    return v0
.end method

.method public reload()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/device/ads/AdContainer;->html:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/device/ads/AdContainer;->shouldPreload:Z

    iget-object v3, p0, Lcom/amazon/device/ads/AdContainer;->preloadCallback:Lcom/amazon/device/ads/PreloadCallback;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amazon/device/ads/AdContainer;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    return-void
.end method

.method public removeNativeCloseButton()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->nativeCloseButton:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-virtual {v0}, Lcom/amazon/device/ads/NativeCloseButton;->remove()V

    return-void
.end method

.method public removePreviousInterfaces()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->removePreviousInterfaces()V

    return-void
.end method

.method public setAdWebViewClient(Lcom/amazon/device/ads/AdWebViewClient;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setViewHeight(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ViewManager;->setHeight(I)V

    return-void
.end method

.method public setViewLayoutParams(III)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/ViewManager;->setLayoutParams(III)V

    return-void
.end method

.method public showNativeCloseButtonImage(Z)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->nativeCloseButton:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/NativeCloseButton;->showImage(Z)V

    return-void
.end method

.method public stashView()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer;->viewManager:Lcom/amazon/device/ads/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewManager;->stashView()V

    return-void
.end method
