.class public Lcom/audible/mobile/downloader/BaseServerResponse;
.super Ljava/lang/Object;
.source "BaseServerResponse.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/ServerResponse;


# static fields
.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final LOCATION_HEADER:Ljava/lang/String; = "Location"

.field protected static final logger:Lorg/slf4j/Logger;


# instance fields
.field expectedContentType:Ljava/lang/String;

.field final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/BaseServerResponse;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/BaseServerResponse;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->expectedContentType:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->statusCode:I

    .line 40
    iput-object p2, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->responseHeaders:Ljava/util/Map;

    .line 41
    iput-object p3, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->expectedContentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contentLength()Ljava/lang/Long;
    .locals 2

    const-string v0, "Content-Length"

    .line 170
    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/BaseServerResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 175
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method protected getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 93
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->responseHeaders:Ljava/util/Map;

    if-nez v0, :cond_1

    return-object v1

    .line 102
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    return-object v1

    :cond_3
    const-string v0, ","

    .line 113
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public isError()Z
    .locals 5

    .line 49
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/BaseServerResponse;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->statusCode:I

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_0

    return v1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->expectedContentType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "Content-Type"

    .line 55
    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/BaseServerResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->expectedContentType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    sget-object v2, Lcom/audible/mobile/downloader/BaseServerResponse;->logger:Lorg/slf4j/Logger;

    iget-object v3, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->expectedContentType:Ljava/lang/String;

    const-string v4, "this.expectedContentType - {}; content_type - {}"

    invoke-interface {v2, v4, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isFatalError()Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->statusCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResponseReadable()Z
    .locals 3

    const-string v0, "Content-Type"

    .line 125
    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/BaseServerResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "text"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 80
    iget v0, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->statusCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseServerErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public redirectTo()Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 146
    iget v0, p0, Lcom/audible/mobile/downloader/BaseServerResponse;->statusCode:I

    const/4 v1, 0x0

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v0, "Location"

    .line 150
    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/BaseServerResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v2, Lcom/audible/mobile/downloader/BaseServerResponse;->logger:Lorg/slf4j/Logger;

    const-string v3, "locationHeader - {}"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 159
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
