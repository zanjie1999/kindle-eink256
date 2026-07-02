.class public Lcom/amazon/nwstd/utils/MobiReplicaCommandBarHelper;
.super Ljava/lang/Object;
.source "MobiReplicaCommandBarHelper.java"


# static fields
.field private static final NEWSSTAND_CONTENT_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private static final YJ_BOOK_EXTENSION:Ljava/lang/String; = ".kfx"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/krx/content/ContentType;

    .line 11
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/utils/MobiReplicaCommandBarHelper;->NEWSSTAND_CONTENT_TYPES:Ljava/util/List;

    return-void
.end method

.method private static isContentTypeNewsstand(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/nwstd/utils/MobiReplicaCommandBarHelper;->NEWSSTAND_CONTENT_TYPES:Ljava/util/List;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isLavaContent(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 22
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".kfx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMobiReplicaContent(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/amazon/nwstd/utils/MobiReplicaCommandBarHelper;->isContentTypeNewsstand(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/nwstd/utils/MobiReplicaCommandBarHelper;->isLavaContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
