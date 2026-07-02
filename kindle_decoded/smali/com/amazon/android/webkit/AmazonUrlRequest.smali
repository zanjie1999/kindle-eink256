.class public Lcom/amazon/android/webkit/AmazonUrlRequest;
.super Ljava/lang/Object;
.source "AmazonUrlRequest.java"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
    value = {
        "EI_EXPOSE_REP",
        "EI_EXPOSE_REP2"
    }
.end annotation


# instance fields
.field private body:[B

.field private extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private isFailoverDisabled:Z

.field private final isMainFrame:Z

.field private final isPrerender:Z

.field private final method:Ljava/lang/String;

.field private proxyInfo:Lcom/amazon/android/webkit/ProxyInfo;

.field private final url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->url:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->method:Ljava/lang/String;

    .line 29
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->headers:Ljava/util/Map;

    .line 30
    iput-boolean p4, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->isMainFrame:Z

    .line 31
    iput-boolean p5, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->isPrerender:Z

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->extraHeaders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZ)V

    .line 37
    iput-object p4, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->body:[B

    return-void
.end method


# virtual methods
.method public addExtraHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->extraHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getBody()[B
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->body:[B

    return-object v0
.end method

.method public getExtraHeaders()Ljava/util/Map;
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

    .line 105
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->extraHeaders:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

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

    .line 97
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyInfo()Lcom/amazon/android/webkit/ProxyInfo;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->proxyInfo:Lcom/amazon/android/webkit/ProxyInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isFailoverDisabled()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->isFailoverDisabled:Z

    return v0
.end method

.method public isMainFrame()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->isMainFrame:Z

    return v0
.end method

.method public isPrerender()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->isPrerender:Z

    return v0
.end method

.method public setFailoverDisabled(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->isFailoverDisabled:Z

    return-void
.end method

.method public setProxyInfo(Lcom/amazon/android/webkit/ProxyInfo;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->proxyInfo:Lcom/amazon/android/webkit/ProxyInfo;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonUrlRequest;->userAgent:Ljava/lang/String;

    return-void
.end method
