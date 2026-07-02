.class public Lcom/amazon/dcapsmodule/DcapsWebRequest;
.super Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;
.source "DcapsWebRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field handler:Lcom/amazon/kindle/dcaps/common/ResponseHandler;

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field payload:Ljava/lang/String;

.field responseBody:Ljava/lang/String;

.field url:Ljava/lang/String;

.field verb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILcom/amazon/kindle/dcaps/common/ResponseHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/amazon/kindle/dcaps/common/ResponseHandler;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/BaseKRXDownloadRequest;-><init>()V

    const/4 p5, 0x0

    .line 25
    iput-object p5, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->responseBody:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->url:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->headers:Ljava/util/Map;

    .line 36
    iput-object p4, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->payload:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->handler:Lcom/amazon/kindle/dcaps/common/ResponseHandler;

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, 0x18f56

    const/4 p4, 0x1

    if-eq p2, p3, :cond_1

    const p3, 0x3498a0

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "post"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "get"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    const-string p2, "GET"

    if-eq p1, p4, :cond_3

    .line 48
    iput-object p2, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->verb:Ljava/lang/String;

    goto :goto_2

    .line 45
    :cond_3
    iput-object p2, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->verb:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string p1, "POST"

    .line 42
    iput-object p1, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->verb:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->verb:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 90
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->ADP:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->payload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    .line 84
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 102
    new-instance v0, Lcom/amazon/dcapsmodule/DcapsWebRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/dcapsmodule/DcapsWebRequest$1;-><init>(Lcom/amazon/dcapsmodule/DcapsWebRequest;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/dcapsmodule/DcapsWebRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
