.class public Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;
.super Ljava/lang/Object;
.source "HttpResponseWithDataPoints.java"


# instance fields
.field private final mDataPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;->mResponse:Lorg/apache/http/HttpResponse;

    .line 29
    iput-object p2, p0, Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;->mDataPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDataPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;->mDataPoints:Ljava/util/List;

    return-object v0
.end method

.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whispersync/communication/utils/HttpResponseWithDataPoints;->mResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method
