.class public final Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;
.super Lcom/audible/mobile/metric/domain/impl/AbstractMetric;
.source "TimerMetricImpl.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/TimerMetric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/metric/domain/TimerMetric;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNINITIALIZED_TIME:J = -0x1L


# instance fields
.field private measurementTime:J

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;-><init>(Landroid/os/Parcel;)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->startTime:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->measurementTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;-><init>(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)V

    .line 23
    invoke-virtual {p0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;-><init>(Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 58
    iput-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->startTime:J

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->measurementTime:J

    return-void
.end method

.method public start()V
    .locals 2

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->startTime:J

    return-void
.end method

.method public stop()V
    .locals 8

    .line 49
    iget-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 50
    iget-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->measurementTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->measurementTime:J

    .line 51
    iput-wide v2, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->startTime:J

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimerMetricImpl{startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", measurementTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->measurementTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl;->measurementTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
