.class public final Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl;
.super Lcom/audible/mobile/metric/domain/impl/AbstractMetric;
.source "DurationMetricImpl.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/DurationMetric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/metric/domain/DurationMetric;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elapsedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;-><init>(Landroid/os/Parcel;)V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl;->elapsedTime:J

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl;->elapsedTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DurationMetricImpl{elapsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl;->elapsedTime:J

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

.method protected writeAdditionToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/audible/mobile/metric/domain/impl/DurationMetricImpl;->elapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
