.class public final Lcom/audible/mobile/download/service/similarity/SimilarityDownloadCommand;
.super Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;
.source "SimilarityDownloadCommand.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 24
    invoke-static {p1, p2}, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadCommand;->constructUrl(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/AbstractPostDownloadCommand;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method private static constructUrl(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "asin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget p1, Lcom/audible/mobile/download/R$string;->moreLikeThisUrl:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method
