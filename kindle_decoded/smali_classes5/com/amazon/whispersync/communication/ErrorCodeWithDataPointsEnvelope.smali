.class public Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrorCodeWithDataPoints:Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    invoke-static {p2}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->convertToEnvelopes(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->mErrorCodeWithDataPoints:Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->mErrorCodeWithDataPoints:Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toErrorCodeWithDataPoints()Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->mErrorCodeWithDataPoints:Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->mErrorCodeWithDataPoints:Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->mErrorCodeWithDataPoints:Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    invoke-virtual {p2}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->mErrorCodeWithDataPoints:Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    invoke-virtual {p2}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->getDataPoints()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
