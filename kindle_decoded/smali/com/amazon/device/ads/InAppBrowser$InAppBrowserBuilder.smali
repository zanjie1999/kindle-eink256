.class public Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;
.super Ljava/lang/Object;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/InAppBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InAppBrowserBuilder"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "InAppBrowserBuilder"


# instance fields
.field private final assets:Lcom/amazon/device/ads/Assets;

.field private context:Landroid/content/Context;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private showOpenExternalBrowserButton:Z

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 459
    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;-><init>(Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->assets:Lcom/amazon/device/ads/Assets;

    .line 464
    sget-object p1, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->assets:Lcom/amazon/device/ads/Assets;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Assets;->ensureAssetsCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Could not load application assets, failed to open URI: %s"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 519
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/device/ads/AdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    const-class v1, Lcom/amazon/device/ads/InAppBrowser;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adapter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->url:Ljava/lang/String;

    const-string v2, "extra_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-boolean v1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->showOpenExternalBrowserButton:Z

    const-string v2, "extra_open_btn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 523
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 510
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Url must not be null or white space"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public withExternalBrowserButton()Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->showOpenExternalBrowserButton:Z

    return-object p0
.end method

.method public withUrl(Ljava/lang/String;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->url:Ljava/lang/String;

    return-object p0
.end method
