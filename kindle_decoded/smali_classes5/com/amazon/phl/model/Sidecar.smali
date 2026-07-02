.class public Lcom/amazon/phl/model/Sidecar;
.super Ljava/lang/Object;
.source "Sidecar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.phl.model.Sidecar"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field private final embeddedId:Ljava/lang/String;

.field private final phls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/phl/model/PopularHighlight;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/amazon/phl/model/PopularHighlight;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/amazon/phl/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    .line 25
    invoke-static {p2}, Lcom/amazon/phl/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "timestamp must be greater than 0"

    .line 26
    invoke-static {v0, v1}, Lcom/amazon/phl/util/Validate;->checkArgument(ZLjava/lang/String;)V

    .line 27
    invoke-static {p6}, Lcom/amazon/phl/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/phl/model/Sidecar;->asin:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/amazon/phl/model/Sidecar;->embeddedId:Ljava/lang/String;

    .line 30
    iput-wide p4, p0, Lcom/amazon/phl/model/Sidecar;->timestamp:J

    const-string p1, "EBOK"

    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    iput-object p1, p0, Lcom/amazon/phl/model/Sidecar;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    goto :goto_2

    .line 36
    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/amazon/kindle/krx/content/ContentType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 38
    :catch_0
    sget-object p1, Lcom/amazon/phl/model/Sidecar;->TAG:Ljava/lang/String;

    const-string p2, "Unkown content type"

    invoke-static {p1, p2}, Lcom/amazon/phl/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    .line 41
    :goto_1
    iput-object p1, p0, Lcom/amazon/phl/model/Sidecar;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    .line 43
    :goto_2
    iput-object p6, p0, Lcom/amazon/phl/model/Sidecar;->phls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/phl/model/Sidecar;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbeddedId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/phl/model/Sidecar;->embeddedId:Ljava/lang/String;

    return-object v0
.end method

.method public getPopularHighlights()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/phl/model/PopularHighlight;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/phl/model/Sidecar;->phls:Ljava/util/List;

    return-object v0
.end method

.method public isValidForBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/phl/model/Sidecar;->embeddedId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/phl/model/Sidecar;->asin:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
