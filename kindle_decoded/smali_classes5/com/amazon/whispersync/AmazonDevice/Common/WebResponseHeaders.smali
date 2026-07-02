.class public Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;
.super Ljava/lang/Object;
.source "WebResponseHeaders.java"


# instance fields
.field private final mHeaderNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaders:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaderNames:Ljava/util/List;

    const-wide/16 v0, 0xc8

    .line 20
    iput-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mStatusCode:J

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "WebResponseHeaders: addHeader: Header cannot be added. Name or value was null."

    .line 75
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getHeaderByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHeaderName(J)Ljava/lang/String;
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getNumHeaders()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "WebResponseHeaders: getHeaderName: index out of range"

    .line 37
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaderNames:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHeaderValue(J)Ljava/lang/String;
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getNumHeaders()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "WebResponseHeaders: getHeaderValue: index out of range"

    .line 48
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaderNames:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 53
    iget-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumHeaders()J
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mHeaderNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStatusCode()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mStatusCode:J

    return-wide v0
.end method

.method public setStatusCode(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->mStatusCode:J

    return-void
.end method
