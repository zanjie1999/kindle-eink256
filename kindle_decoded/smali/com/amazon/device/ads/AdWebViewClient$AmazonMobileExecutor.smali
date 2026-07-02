.class Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;
.super Ljava/lang/Object;
.source "AdWebViewClient.java"

# interfaces
.implements Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmazonMobileExecutor"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AmazonDeviceLauncher;Lcom/amazon/device/ads/WebUtils2;)V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    .line 301
    invoke-static {}, Lcom/amazon/device/ads/AdWebViewClient;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 302
    iput-object p3, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    .line 303
    iput-object p4, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Z
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->specialUrlClicked(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected handleApplicationDefinedSpecialURL(Ljava/lang/String;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Special url clicked, but was not handled by SDK. Url: %s"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected launchExternalActivity(Ljava/lang/String;)Z
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/WebUtils2;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public specialUrlClicked(Ljava/lang/String;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Executing AmazonMobile Intent"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 331
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    const-string v1, "intent"

    .line 335
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 341
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 343
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launchExternalActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v2, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->isWindowshopPresent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v2, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->isInWindowshopApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 356
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shopping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "app-action"

    .line 358
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 359
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "detail"

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "asin"

    .line 365
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->launchWindowshopDetailPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-string/jumbo v2, "search"

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string p1, "keyword"

    .line 374
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 379
    :cond_7
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->launcher:Lcom/amazon/device/ads/AmazonDeviceLauncher;

    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/AmazonDeviceLauncher;->launchWindowshopSearchPage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_2
    return-void

    :cond_9
    const-string/jumbo v0, "webview"

    .line 381
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 390
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    :goto_3
    return-void

    .line 396
    :cond_b
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;->handleApplicationDefinedSpecialURL(Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void
.end method
