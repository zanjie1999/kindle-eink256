.class public final Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;
.super Lcom/audible/mobile/metric/domain/impl/AbstractMetric;
.source "ExceptionMetricImpl.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/ExceptionMetric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/metric/domain/ExceptionMetric;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isFatal:Z

.field private offendingMethod:Ljava/lang/StackTraceElement;

.field private stackTraceRetrieved:Z

.field private threadName:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->stackTraceRetrieved:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    iput-object v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->throwable:Ljava/lang/Throwable;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->isFatal:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->threadName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;-><init>(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->stackTraceRetrieved:Z

    .line 33
    invoke-static {p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->access$000(Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->throwable:Ljava/lang/Throwable;

    .line 34
    invoke-static {p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->access$100(Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->isFatal:Z

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->threadName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;-><init>(Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 97
    const-class v1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    invoke-super {p0, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 105
    :cond_2
    check-cast p1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;

    .line 107
    iget-boolean v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->isFatal:Z

    iget-boolean v2, p1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->isFatal:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->threadName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->threadName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->threadName:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_0
    return v0

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->throwable:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget-boolean v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->isFatal:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->threadName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionMetricImpl{throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFatal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->isFatal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offendingMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->offendingMethod:Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stackTraceRetrieved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->stackTraceRetrieved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", threadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-super {p0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAdditionToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 85
    iget-object p2, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 86
    iget-boolean p2, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->isFatal:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget-object p2, p0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl;->threadName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
