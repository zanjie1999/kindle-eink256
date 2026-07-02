.class public Lcom/amazon/kcp/store/StoreIntentCreator;
.super Lcom/amazon/kcp/store/BaseStoreIntentCreator;
.source "StoreIntentCreator.java"


# static fields
.field private static final FALLBACK_ACTION_KEY:Ljava/lang/String; = "fallbackAction"

.field private static final FALLBACK_DATA_KEY:Ljava/lang/String; = "fallbackData"


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/BaseStoreIntentCreator;-><init>(Lcom/amazon/kcp/application/IAndroidApplicationController;)V

    return-void
.end method


# virtual methods
.method public createBrowseNodeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    sget-object p1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BROWSE_NODE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "browsenode"

    .line 121
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reftag"

    .line 123
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public createDetailPageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    sget-object p1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->LEARN:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "asin"

    .line 67
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public createFeatureDocIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    sget-object p1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string p1, "fallbackAction"

    .line 133
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "fallbackData"

    .line 134
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v1, "pushFallbackType"

    .line 136
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pushFallbackData"

    .line 137
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "pushPageId"

    .line 140
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "reftag"

    .line 142
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public createLoadArticleIntent(Landroid/content/Context;Lcom/amazon/kcp/store/StorePathProvider;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "article.activeArticle"

    .line 100
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-interface {p2}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultPath()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "store.domain"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-static {p4}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reftag"

    .line 103
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/store/StoreIntentCreator;->createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    sget-object p1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "url"

    .line 80
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-static {p3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "reftag"

    .line 82
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public createSearchUrlIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    sget-object p1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "url"

    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "searchQuery"

    .line 113
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public createShowPageIntent(Ljava/lang/String;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 36
    iget-object p4, p0, Lcom/amazon/kcp/store/BaseStoreIntentCreator;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object p4

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, p4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    invoke-virtual {p2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string p4, "action"

    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "asin"

    .line 39
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "displayedPrice"

    .line 40
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "currency"

    .line 41
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    new-instance p1, Lcom/amazon/kcp/util/Bundler;

    invoke-direct {p1}, Lcom/amazon/kcp/util/Bundler;-><init>()V

    const-string/jumbo p2, "urlParameters"

    invoke-virtual {p1, p2, p7}, Lcom/amazon/kcp/util/Bundler;->putMap(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kcp/util/Bundler;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/util/Bundler;->bundle(Landroid/content/Intent;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p1, "reftag"

    .line 45
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public createShowStoreIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public createShowStorefrontIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/kindle/store/StoreType;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/store/StoreType;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    sget-object p1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "asin"

    .line 55
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "reftag"

    .line 56
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "storeType"

    .line 57
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    new-instance p1, Lcom/amazon/kcp/util/Bundler;

    invoke-direct {p1}, Lcom/amazon/kcp/util/Bundler;-><init>()V

    const-string/jumbo p2, "urlParameters"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/util/Bundler;->putMap(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/kcp/util/Bundler;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/util/Bundler;->bundle(Landroid/content/Intent;)Landroid/content/Intent;

    return-object v0
.end method
