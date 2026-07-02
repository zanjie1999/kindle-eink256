.class public Lcom/amazon/ku/KuStoreManager;
.super Ljava/lang/Object;
.source "KuStoreManager.java"


# static fields
.field private static final ACTION_OPEN_STORE_URL:Ljava/lang/String; = "OPEN_STORE_URL"

.field private static final FALLBACK_ACTION_KEY:Ljava/lang/String; = "fallbackAction"

.field private static final FALLBACK_DATA_KEY:Ljava/lang/String; = "fallbackData"

.field private static final FALLBACK_KU_SIGN_UP_URL_PATH:Ljava/lang/String; = "/kucentral"

.field private static final FALLBACK_KU_SUBSCRIBE_RETURN_PATH:Ljava/lang/String; = "/book-wizard-ku-sign-up-done"

.field private static final FALLBACK_KU_SUBSCRIBE_URL_PATH:Ljava/lang/String; = "/kindle-dbs/hz/signup/subscribe?program=KINDLE_UNLIMITED&offering=STANDARD&rp=%2Fbook-wizard-ku-sign-up-done"

.field private static final FALLBACK_KU_SUBSCRIBE_VIEW_STATE_NAME:Ljava/lang/String; = "viewState"

.field private static final KU_FEATURE_PAGE_ID:Ljava/lang/String; = "tosfd-kusignup"

.field private static final PAGE_ID_KEY:Ljava/lang/String; = "landingPageId"


# direct methods
.method private static loadKuFeatureDoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 85
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "tosfd-kusignup"

    const-string v2, "landingPageId"

    .line 86
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fallbackAction"

    const-string v3, "OPEN_STORE_URL"

    .line 87
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "/kucentral"

    :goto_0
    const-string v2, "fallbackData"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1, v0}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadFeatureDoc(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static loadKuLandingPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne v0, v1, :cond_0

    .line 50
    invoke-static {p0, p1}, Lcom/amazon/ku/KuStoreManager;->loadKuFeatureDoc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/ku/KuStoreManager;->loadKuStoreWebPage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static loadKuStoreWebPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/ku/ui/activity/KuStoreActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "/kucentral"

    :goto_0
    const-string v2, "URL_PATH"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "REF_TAG"

    .line 101
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static loadKuSubscriptionWebApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 70
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/ku/ui/activity/KuStoreActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "/kindle-dbs/hz/signup/subscribe?program=KINDLE_UNLIMITED&offering=STANDARD&rp=%2Fbook-wizard-ku-sign-up-done"

    :goto_0
    const-string v2, "URL_PATH"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "/book-wizard-ku-sign-up-done"

    :goto_1
    const-string p0, "EXIT_URL_PATH"

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const-string/jumbo p2, "viewState"

    :goto_2
    const-string p0, "EXIT_STATE_PARAMETER_NAME"

    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "REF_TAG"

    .line 76
    invoke-virtual {v1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
