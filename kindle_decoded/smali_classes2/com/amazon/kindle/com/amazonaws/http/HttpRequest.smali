.class public Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private final content:Ljava/io/InputStream;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isStreaming:Z

.field private final method:Ljava/lang/String;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->upperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->method:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->uri:Ljava/net/URI;

    if-nez p3, :cond_0

    .line 61
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    .line 63
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->content:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-string v3, "Content-Length"

    .line 122
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    return-wide v1
.end method

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

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->isStreaming:Z

    return v0
.end method

.method public setStreaming(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->isStreaming:Z

    return-void
.end method
