.class public Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;
.super Ljava/lang/Object;
.source "DataPointEnvelope.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataPoint:Lcom/amazon/whispersync/client/metrics/DataPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/client/metrics/DataPoint;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->dataPoint:Lcom/amazon/whispersync/client/metrics/DataPoint;

    return-void
.end method

.method public static convertFromEnvelopes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 92
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;

    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->toDataPoint()Lcom/amazon/whispersync/client/metrics/DataPoint;

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
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 83
    new-instance v3, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-direct {v3, v4}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;-><init>(Lcom/amazon/whispersync/client/metrics/DataPoint;)V

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

.method public toDataPoint()Lcom/amazon/whispersync/client/metrics/DataPoint;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->dataPoint:Lcom/amazon/whispersync/client/metrics/DataPoint;

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->dataPoint:Lcom/amazon/whispersync/client/metrics/DataPoint;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 51
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->dataPoint:Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-virtual {p2}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->dataPoint:Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-virtual {p2}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->dataPoint:Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-virtual {p2}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getSamples()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->dataPoint:Lcom/amazon/whispersync/client/metrics/DataPoint;

    invoke-virtual {p2}, Lcom/amazon/whispersync/client/metrics/DataPoint;->getType()Lcom/amazon/whispersync/client/metrics/DataPointType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
