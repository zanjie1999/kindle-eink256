.class final Lcom/amazon/whispersync/client/metrics/DataPointEnvelope$1;
.super Ljava/lang/Object;
.source "DataPointEnvelope.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;
    .locals 5

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/DataPointType;->fromInt(I)Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object p1

    .line 65
    new-instance v3, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;

    new-instance v4, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-direct {v4, v0, v1, v2, p1}, Lcom/amazon/whispersync/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/whispersync/client/metrics/DataPointType;)V

    invoke-direct {v3, v4}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;-><init>(Lcom/amazon/whispersync/client/metrics/DataPoint;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;
    .locals 0

    .line 70
    new-array p1, p1, [Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope$1;->newArray(I)[Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;

    move-result-object p1

    return-object p1
.end method
