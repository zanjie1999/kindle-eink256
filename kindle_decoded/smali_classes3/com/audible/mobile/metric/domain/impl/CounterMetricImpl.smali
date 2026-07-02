.class public final Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;
.super Lcom/audible/mobile/metric/domain/impl/AbstractMetric;
.source "CounterMetricImpl.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/CounterMetric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/metric/domain/CounterMetric;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;-><init>(Landroid/os/Parcel;)V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;-><init>(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->access$000(Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;-><init>(Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CounterMetricImpl{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAdditionToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
