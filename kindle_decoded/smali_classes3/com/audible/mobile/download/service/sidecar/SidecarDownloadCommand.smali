.class public final Lcom/audible/mobile/download/service/sidecar/SidecarDownloadCommand;
.super Lcom/audible/mobile/downloader/BaseGETDownloadCommand;
.source "SidecarDownloadCommand.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Format;)V
    .locals 0

    .line 26
    invoke-static {p1, p2, p3, p4}, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadCommand;->constructUrl(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Format;)Ljava/net/URL;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;Z)V

    return-void
.end method

.method private static constructUrl(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/Format;)Ljava/net/URL;
    .locals 3

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "AUDI"

    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p3, "format"

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "guid"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget p1, Lcom/audible/mobile/download/R$string;->sidecarDownloadUrl:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
