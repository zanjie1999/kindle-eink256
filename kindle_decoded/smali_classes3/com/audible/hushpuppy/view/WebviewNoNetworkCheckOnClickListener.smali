.class public Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;
.super Ljava/lang/Object;
.source "WebviewNoNetworkCheckOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 35
    sget-object v0, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch, event is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    sget-object p2, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "ACTION_UP, considering on click performed. Checking network first."

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/audible/hushpuppy/view/WebviewNoNetworkCheckOnClickListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p2}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
