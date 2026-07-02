.class public Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;
.super Ljava/lang/Object;
.source "AudibleTOAInfoModalJavaScriptBridge.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final toaWebViewUpsellController:Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->toaWebViewUpsellController:Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    .line 36
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public onOrderComplete(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 70
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onOrderComplete JSB is called"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->toaWebViewUpsellController:Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->onOrderComplete()V

    return-void
.end method

.method public onOrderCompleteReadAndListen(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48
    sget-object v0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onOrderCompleteReadAndListen JSB is called"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/network/AsinJSBParam;

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/network/AsinJSBParam;->getKindleAsin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->toaWebViewUpsellController:Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/ToaWebViewUpsellController;->onReadAndListenClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "kindle ebook Asin is null!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Asin params are null!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOrderRequested(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 82
    sget-object p1, Lcom/audible/hushpuppy/view/common/AudibleTOAInfoModalJavaScriptBridge;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onOrderRequested JSB is called"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method
