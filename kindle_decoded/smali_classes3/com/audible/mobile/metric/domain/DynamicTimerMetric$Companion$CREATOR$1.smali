.class public final Lcom/audible/mobile/metric/domain/DynamicTimerMetric$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "DynamicTimerMetric.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/metric/domain/DynamicTimerMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/metric/domain/TimerMetric;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/metric/domain/DynamicTimerMetric;
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/audible/mobile/metric/domain/DynamicTimerMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/metric/domain/DynamicTimerMetric;-><init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/audible/mobile/metric/domain/DynamicTimerMetric$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/metric/domain/DynamicTimerMetric;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/metric/domain/DynamicTimerMetric;
    .locals 0

    .line 81
    new-array p1, p1, [Lcom/audible/mobile/metric/domain/DynamicTimerMetric;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/audible/mobile/metric/domain/DynamicTimerMetric$Companion$CREATOR$1;->newArray(I)[Lcom/audible/mobile/metric/domain/DynamicTimerMetric;

    move-result-object p1

    return-object p1
.end method
