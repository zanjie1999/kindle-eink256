.class public Lcom/amazon/kindle/store/StoreManager;
.super Lcom/amazon/kindle/store/AbstractStoreManager;
.source "StoreManager.java"


# static fields
.field private static final ANDROID_BACK_NAVIGATION_ENABLED:I = 0x1

.field private static final STORE_DETAIL_INTENT:Ljava/lang/String; = "com.amazon.webapp.msg.openWebApp.KINDLE_STORE"

.field private static final STORE_EXTRAS_ANDROID_BACK_NAVIGATION:Ljava/lang/String; = "androidBackNavigation"

.field private static final STORE_EXTRAS_DEST_KEY:Ljava/lang/String; = "destination"

.field private static final STORE_EXTRAS_DEST_VALUE:Ljava/lang/String; = "DETAIL"

.field private static final STORE_EXTRAS_METRICS_KEY:Ljava/lang/String; = "metrics"

.field private static final STORE_EXTRAS_METRICS_START_TIME_KEY:Ljava/lang/String; = "storeStartTime"

.field private static final STORE_EXTRAS_PARAMS_KEY:Ljava/lang/String; = "queryParams"

.field private static final STORE_EXTRAS_REF_KEY:Ljava/lang/String; = "ref_"

.field private static final STORE_EXTRAS_REF_TAG:Ljava/lang/String; = "kindle_launcher_open_store"

.field private static final STORE_METRICS_FLUIDITY_KEY:Ljava/lang/String; = "fluidityMetricsName"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/store/StoreManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/StoreManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private createStoreRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/amazon/kindle/store/StoreRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/store/StoreRequest;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/store/StoreManager;->constructStoreRequest(Ljava/util/HashMap;)Lcom/amazon/kindle/store/StoreRequest;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/amazon/kindle/store/StoreManager;->createMetricParameters()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "fluidityMetricsName"

    .line 183
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 187
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 188
    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p2, "metrics"

    .line 192
    invoke-virtual {v0, p2, v1}, Lcom/amazon/kindle/store/StoreRequest;->putIntentExtra(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "destination"

    .line 193
    invoke-virtual {v0, p2, p3}, Lcom/amazon/kindle/store/StoreRequest;->putIntentExtra(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "ref_"

    .line 194
    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/store/StoreRequest;->addStoreParam(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStoreContext(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;
    .locals 1

    .line 150
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    .line 153
    :cond_2
    :goto_0
    sget-object p0, Lcom/amazon/kindle/store/StorefrontContext1P;->NEWSSTAND:Lcom/amazon/kindle/store/StorefrontContext1P;

    iget-object p0, p0, Lcom/amazon/kindle/store/StorefrontContext1P;->storefrontName:Ljava/lang/String;

    goto :goto_2

    .line 151
    :cond_3
    :goto_1
    sget-object p0, Lcom/amazon/kindle/store/StorefrontContext1P;->BOOKS:Lcom/amazon/kindle/store/StorefrontContext1P;

    iget-object p0, p0, Lcom/amazon/kindle/store/StorefrontContext1P;->storefrontName:Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public static getStoreIntentForAsin(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, p1, v0, v0}, Lcom/amazon/kindle/store/StoreManager;->getStoreIntentForAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getStoreIntentForAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.webapp.msg.openWebApp.KINDLE_STORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v3, "asin"

    .line 97
    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "destination"

    const-string v3, "DETAIL"

    .line 102
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "storefront-context"

    .line 106
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p2, :cond_2

    const-string p2, "kindle_launcher_open_store"

    :cond_2
    const-string p0, "ref_"

    .line 112
    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    .line 117
    :try_start_0
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p1, "&"

    invoke-direct {p0, p3, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance p2, Ljava/util/StringTokenizer;

    const-string p3, "="

    invoke-direct {p2, p1, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "storeStartTime"

    invoke-virtual {v2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "queryParams"

    .line 133
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "metrics"

    .line 134
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string p1, "androidBackNavigation"

    .line 135
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 137
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected constructStoreRequest(Ljava/util/HashMap;)Lcom/amazon/kindle/store/StoreRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/store/StoreRequest;"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/amazon/kindle/store/StoreRequest;

    invoke-virtual {p0}, Lcom/amazon/kindle/store/AbstractStoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/store/StoreRequest;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v0
.end method

.method protected createMetricParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public createStoreRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreRequest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/store/StoreManager;->createStoreRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/amazon/kindle/store/StoreRequest;

    move-result-object p1

    return-object p1
.end method

.method public getStoreHostnameFromPfm(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 241
    invoke-static {p1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z
    .locals 2

    .line 222
    sget-object v0, Lcom/amazon/kindle/store/StoreManager$1;->$SwitchMap$com$amazon$kindle$krx$store$IStoreManager$StorePageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
