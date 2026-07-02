.class public Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;
    }
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

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

.field private final rawContent:Ljava/io/InputStream;

.field private final statusCode:I

.field private final statusText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->statusText:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->statusCode:I

    .line 43
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    .line 44
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;)V

    return-void
.end method

.method public static builder()Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;
    .locals 1

    .line 112
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    .line 71
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    return-object v0
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

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getRawContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->statusText:Ljava/lang/String;

    return-object v0
.end method
