.class public Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;
.super Ljava/lang/Object;
.source "DataPointEnvelope.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope$1;

    invoke-direct {v0}, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope$1;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->dataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    return-void
.end method

.method public static convertFromEnvelopes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 90
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->toDataPoint()Lcom/amazon/client/metrics/thirdparty/DataPoint;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static convertToEnvelopes(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 81
    new-instance v3, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-direct {v3, v4}, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;-><init>(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toDataPoint()Lcom/amazon/client/metrics/thirdparty/DataPoint;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->dataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->dataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 49
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->dataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-virtual {p2}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->dataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-virtual {p2}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->dataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-virtual {p2}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getSamples()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->dataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-virtual {p2}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->getType()Lcom/amazon/client/metrics/thirdparty/DataPointType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
