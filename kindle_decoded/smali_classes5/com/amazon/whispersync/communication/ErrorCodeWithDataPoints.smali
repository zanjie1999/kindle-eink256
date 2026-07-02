.class public Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;
.super Ljava/lang/Object;


# instance fields
.field private final mCommunicationErrorCode:I

.field private final mDataPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->mCommunicationErrorCode:I

    iput-object p2, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->mDataPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->mCommunicationErrorCode:I

    return v0
.end method

.method public getDataPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->mDataPoints:Ljava/util/List;

    return-object v0
.end method
