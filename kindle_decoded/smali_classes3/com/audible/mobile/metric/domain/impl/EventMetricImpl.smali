.class public Lcom/audible/mobile/metric/domain/impl/EventMetricImpl;
.super Lcom/audible/mobile/metric/domain/impl/AbstractMetric;
.source "EventMetricImpl.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/EventMetric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/metric/domain/EventMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/EventMetricImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/metric/domain/impl/EventMetricImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/metric/domain/impl/EventMetricImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/audible/mobile/metric/domain/impl/EventMetricImpl$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/EventMetricImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventMetric { } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeAdditionToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
