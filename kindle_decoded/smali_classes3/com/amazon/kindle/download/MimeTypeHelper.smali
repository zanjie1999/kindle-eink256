.class public Lcom/amazon/kindle/download/MimeTypeHelper;
.super Ljava/lang/Object;
.source "MimeTypeHelper.java"


# static fields
.field private static final MIMETYPE_TOPAZ:Ljava/lang/String; = "application/x-topaz-ebook"

.field private static final MIMETYPE_YJ_ENTITY_MAP:Ljava/lang/String; = "application/x-kfx-entitymap"

.field private static final MIMETYPE_YJ_MAGAZINE:Ljava/lang/String; = "application/x-kfx-magazine"

.field private static final mIssuesDownloadingMimetype:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/MimeTypeHelper;->mIssuesDownloadingMimetype:Ljava/util/Map;

    return-void
.end method

.method public static getIssueDownloadingMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Lcom/amazon/kindle/download/MimeTypeHelper;->mIssuesDownloadingMimetype:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isMobi7MimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-mobipocket-ebook"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMobiMimeType(Ljava/lang/String;)Z
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMobi7MimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mobi8-ebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMopMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-mobipocket-ebook-mop"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTopazMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-topaz-ebook"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isYellowJerseyContentMimeType(Ljava/lang/String;)Z
    .locals 1

    .line 107
    invoke-static {p0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyMagazineMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isYellowJerseyEBookMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-kfx-ebook"

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isYellowJerseyEntityMapMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-kfx-entitymap"

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isYellowJerseyMagazineMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-kfx-magazine"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-kfx-periodicals-v2-magazine"

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static removeIssueDownloadingMimetype(Ljava/lang/String;)V
    .locals 1

    .line 134
    sget-object v0, Lcom/amazon/kindle/download/MimeTypeHelper;->mIssuesDownloadingMimetype:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setIssueDownloadingMimetype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    sget-object v0, Lcom/amazon/kindle/download/MimeTypeHelper;->mIssuesDownloadingMimetype:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
