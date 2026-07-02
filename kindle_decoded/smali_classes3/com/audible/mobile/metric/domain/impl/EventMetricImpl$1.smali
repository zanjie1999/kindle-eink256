.class Lcom/audible/mobile/metric/domain/impl/EventMetricImpl$1;
.super Ljava/lang/Object;
.source "EventMetricImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/metric/domain/impl/EventMetricImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/metric/domain/EventMetric;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/metric/domain/EventMetric;
    .locals 2

    .line 37
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/EventMetricImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/metric/domain/impl/EventMetricImpl;-><init>(Landroid/os/Parcel;Lcom/audible/mobile/metric/domain/impl/EventMetricImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/audible/mobile/metric/domain/impl/EventMetricImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/metric/domain/EventMetric;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/metric/domain/EventMetric;
    .locals 0

    .line 43
    new-array p1, p1, [Lcom/audible/mobile/metric/domain/EventMetric;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/audible/mobile/metric/domain/impl/EventMetricImpl$1;->newArray(I)[Lcom/audible/mobile/metric/domain/EventMetric;

    move-result-object p1

    return-object p1
.end method
