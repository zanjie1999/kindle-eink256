.class public final Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadCommand;
.super Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;
.source "SubscriptionDownloadCommand.java"


# static fields
.field private static final RETRIEVE_ENTIRE_SUBSCRIPTION_LAST_PURCHASE_DATE:Ljava/lang/String; = "1/1/1990"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;)V
    .locals 0

    .line 27
    invoke-static {p1, p2}, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadCommand;->constructUrl(Landroid/content/Context;Ljava/util/Date;)Ljava/net/URL;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method private static constructUrl(Landroid/content/Context;Ljava/util/Date;)Ljava/net/URL;
    .locals 1

    .line 32
    sget v0, Lcom/audible/mobile/download/R$string;->subscriptionServiceUrl:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/audible/mobile/download/service/subscription/SubscriptionDownloadCommand;->queryString(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method private static queryString(Ljava/util/Date;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "siteId"

    const-string v2, ""

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "totalIssues"

    const-string v2, "3"

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 46
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "1/1/1990"

    :goto_0
    const-string v1, "purchaseAfterDate"

    .line 50
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
