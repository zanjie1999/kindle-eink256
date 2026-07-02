.class public Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;
.super Ljava/lang/Object;
.source "TweakColorCombinationActionButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 40
    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_tweak_settings:I

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 0

    const-string p1, "Tweak!"

    return-object p1
.end method

.method public getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 51
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugActivity;->isCustomColorSettingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 55
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public onClick(Ljava/lang/Object;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0, p1}, Lcom/amazon/kcp/debug/DebugActivity;->getCustomColorsAlertDialog(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
