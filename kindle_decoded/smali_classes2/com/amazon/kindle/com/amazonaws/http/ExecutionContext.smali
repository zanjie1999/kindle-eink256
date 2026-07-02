.class public Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;
.super Ljava/lang/Object;
.source "ExecutionContext.java"


# instance fields
.field private final awsClient:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;

.field private final awsRequestMetrics:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

.field private contextUserAgent:Ljava/lang/String;

.field private credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

.field private final requestHandler2s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;",
            ">;Z",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->requestHandler2s:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 65
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetricsFullSupport;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->awsRequestMetrics:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    .line 68
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->awsClient:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;

    return-void
.end method


# virtual methods
.method public getAwsRequestMetrics()Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->awsRequestMetrics:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;

    return-object v0
.end method

.method public getContextUserAgent()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->contextUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public getRequestHandler2s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->requestHandler2s:Ljava/util/List;

    return-object v0
.end method

.method public getSignerByURI(Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->awsClient:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;->getSignerByURI(Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;->credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    return-void
.end method

.method public setSigner(Lcom/amazon/kindle/com/amazonaws/auth/Signer;)V
    .locals 0

    return-void
.end method
