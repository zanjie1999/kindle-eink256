.class public Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;
.super Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;
.source "CustomWebStoreUriTranslator.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private customEndpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomEndpoint()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->customEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object p1, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Can\'t set new endpoint as it\'s null or empty!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->customEndpoint:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public translate(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    const-string v0, "untranslatedUri cannot be null"

    .line 50
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->customEndpoint:Ljava/lang/String;

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Can\'t translate uri as the new endpoint is null or empty!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object p1

    .line 55
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replacing the entire url with custom endpoint url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->customEndpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->customEndpoint:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
