.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ExecutionContext;
.super Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;
.source "S3ExecutionContext.java"


# instance fields
.field private signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;


# direct methods
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

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;)V

    return-void
.end method


# virtual methods
.method public getSignerByURI(Ljava/net/URI;)Lcom/amazon/kindle/com/amazonaws/auth/Signer;
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ExecutionContext;->signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    return-object p1
.end method

.method public setSigner(Lcom/amazon/kindle/com/amazonaws/auth/Signer;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/S3ExecutionContext;->signer:Lcom/amazon/kindle/com/amazonaws/auth/Signer;

    return-void
.end method
