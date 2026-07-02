.class final Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance p1, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;

    new-instance v2, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    invoke-direct {v2, v0, v1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;-><init>(ILjava/util/List;)V

    invoke-direct {p1, v2}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;-><init>(Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;
    .locals 0

    new-array p1, p1, [Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope$1;->newArray(I)[Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;

    move-result-object p1

    return-object p1
.end method
