.class final Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope$1;
.super Ljava/lang/Object;
.source "DataPointEnvelope.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;
    .locals 5

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/DataPointType;->fromInt(I)Lcom/amazon/client/metrics/thirdparty/DataPointType;

    move-result-object p1

    .line 63
    new-instance v3, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;

    new-instance v4, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-direct {v4, v0, v1, v2, p1}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    invoke-direct {v3, v4}, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;-><init>(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;
    .locals 0

    .line 68
    new-array p1, p1, [Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope$1;->newArray(I)[Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;

    move-result-object p1

    return-object p1
.end method
