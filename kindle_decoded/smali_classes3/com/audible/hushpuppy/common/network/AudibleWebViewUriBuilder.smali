.class public Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;
.super Ljava/lang/Object;
.source "AudibleWebViewUriBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder$UpsellView;
    }
.end annotation


# static fields
.field private static final ASIN_PARAM:Ljava/lang/String; = "kindleAsin"

.field private static final BACKGROUND_PARAM:Ljava/lang/String; = "rbgc"

.field private static final IS_KINDLE_APP:Ljava/lang/String; = "isKindleApp"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MFA_INTERSTITIA_URL:Ljava/lang/String; = "mfaInterstitialUrl"

.field private static final ORDER_ID_PARAM:Ljava/lang/String; = "orderId"

.field private static final THEME_PARAM:Ljava/lang/String; = "theme"

.field private static final UPSELL_PATH:Ljava/lang/String; = "hz/audible/kcpaudioupsell"

.field private static final VIEW_PARAM:Ljava/lang/String; = "view"

.field private static final WEBSITE_MAIN_PATH:Landroid/net/Uri;


# instance fields
.field private final uriTranslator:Lcom/audible/mobile/framework/UriTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "https://www.amazon.com/"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->WEBSITE_MAIN_PATH:Landroid/net/Uri;

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p1

    const-class v0, Lcom/audible/mobile/framework/UriTranslator;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/framework/UriTranslator;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;-><init>(Lcom/audible/mobile/framework/UriTranslator;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/framework/UriTranslator;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/framework/UriTranslator;

    iput-object p1, p0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    return-void
.end method


# virtual methods
.method public getUpsellUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 93
    sget-object v0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Build upsell url"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    sget-object v1, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->WEBSITE_MAIN_PATH:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hz/audible/kcpaudioupsell"

    .line 95
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "kindleAsin"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "theme"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "view"

    .line 97
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "rbgc"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 99
    invoke-static {p5}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "isKindleApp"

    .line 100
    invoke-virtual {p1, p2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 103
    sget-object p2, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "uri is: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object p1
.end method

.method public getUpsellUriWithOrderIdAndMfaInterstitialUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 124
    sget-object v0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Build upsell url with orderId and mfaInterstitialUrl"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->uriTranslator:Lcom/audible/mobile/framework/UriTranslator;

    sget-object v1, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->WEBSITE_MAIN_PATH:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/UriTranslator;->translate(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hz/audible/kcpaudioupsell"

    .line 126
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "kindleAsin"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "theme"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "view"

    .line 128
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "rbgc"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "orderId"

    .line 130
    invoke-virtual {p1, p2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 131
    invoke-static {p6}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "mfaInterstitialUrl"

    .line 132
    invoke-virtual {p1, p2, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    :cond_0
    invoke-static {p7}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "isKindleApp"

    .line 135
    invoke-virtual {p1, p2, p7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 138
    sget-object p2, Lcom/audible/hushpuppy/common/network/AudibleWebViewUriBuilder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "uri is: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object p1
.end method
