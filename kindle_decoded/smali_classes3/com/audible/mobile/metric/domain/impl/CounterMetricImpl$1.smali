.class Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;
.super Ljava/lang/Object;
.source "CounterMetricImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/metric/domain/CounterMetric;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/metric/domain/CounterMetric;
    .locals 2

    .line 68
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;-><init>(Landroid/os/Parcel;Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/metric/domain/CounterMetric;
    .locals 0

    .line 74
    new-array p1, p1, [Lcom/audible/mobile/metric/domain/CounterMetric;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;->newArray(I)[Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    return-object p1
.end method
