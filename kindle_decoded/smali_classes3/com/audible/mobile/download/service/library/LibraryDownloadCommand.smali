.class public final Lcom/audible/mobile/download/service/library/LibraryDownloadCommand;
.super Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;
.source "LibraryDownloadCommand.java"


# static fields
.field private static final RETRIEVE_ENTIRE_LIBRARY_LAST_PURCHASE_DATE:Ljava/lang/String; = "1/1/1990"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/Marketplace;Ljava/util/Date;)V
    .locals 0

    .line 28
    invoke-static {p1, p2, p3}, Lcom/audible/mobile/download/service/library/LibraryDownloadCommand;->constructUrl(Landroid/content/Context;Lcom/audible/mobile/identity/Marketplace;Ljava/util/Date;)Ljava/net/URL;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;-><init>(Ljava/net/URL;)V

    .line 29
    invoke-direct {p0}, Lcom/audible/mobile/download/service/library/LibraryDownloadCommand;->addHeaders()V

    return-void
.end method

.method private addHeaders()V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "text/xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static constructUrl(Landroid/content/Context;Lcom/audible/mobile/identity/Marketplace;Ljava/util/Date;)Ljava/net/URL;
    .locals 1

    .line 34
    sget v0, Lcom/audible/mobile/download/R$string;->libraryServiceUrl:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/audible/mobile/download/service/library/LibraryDownloadCommand;->queryString(Lcom/audible/mobile/identity/Marketplace;Ljava/util/Date;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method private static queryString(Lcom/audible/mobile/identity/Marketplace;Ljava/util/Date;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/identity/Marketplace;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/audible/mobile/identity/Marketplace;->getSiteId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "siteId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sortByColumn"

    const-string v1, "sortPurchDate"

    .line 41
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sortInAscendingOrder"

    const-string v1, "false"

    .line 42
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 47
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MM/dd/yyyy"

    invoke-direct {p0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 48
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "1/1/1990"

    :goto_0
    const-string p1, "purchaseAfterDate"

    .line 51
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
