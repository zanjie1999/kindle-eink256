.class public Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;
.super Ljava/lang/Object;
.source "BrowserHostJavaScriptBridge.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openExternalUrlsInternally(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 31
    sget-object v0, Lcom/audible/hushpuppy/view/common/BrowserHostJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "openExternalUrlsInternally JSB is called, openInternally is {}"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
