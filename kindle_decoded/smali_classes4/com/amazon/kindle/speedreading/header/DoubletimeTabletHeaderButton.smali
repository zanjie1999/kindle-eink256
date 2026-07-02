.class public Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;
.super Ljava/lang/Object;
.source "DoubletimeTabletHeaderButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "1042"


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 29
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    .line 30
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

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

    const-string v0, "1042"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/krx/ui/TextType;->LONG:Lcom/amazon/kindle/krx/ui/TextType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$string;->dt_app_detail_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$string;->dt_app_pretty_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 56
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->allowDoubleTime(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/view/accessibility/AccessibilityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    .line 61
    :catch_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Chrome"

    const-string v2, "doubletime_header_button_click"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->startDoubletimeMode(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
