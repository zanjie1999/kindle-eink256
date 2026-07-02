.class public final Lcom/google/android/gms/internal/ads/zzdwf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddx;
.implements Lcom/google/android/gms/internal/ads/zzbcv;
.implements Lcom/google/android/gms/internal/ads/zzdbc;
.implements Lcom/google/android/gms/internal/ads/zzdbw;
.implements Lcom/google/android/gms/internal/ads/zzdbx;
.implements Lcom/google/android/gms/internal/ads/zzdcq;
.implements Lcom/google/android/gms/internal/ads/zzdbf;
.implements Lcom/google/android/gms/internal/ads/zzamv;
.implements Lcom/google/android/gms/internal/ads/zzfet;


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdvt;

.field private zzc:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvt;Lcom/google/android/gms/internal/ads/zzcoj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzb:Lcom/google/android/gms/internal/ads/zzdvt;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zza:Ljava/util/List;

    return-void
.end method

.method private final varargs zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzb:Lcom/google/android/gms/internal/ads/zzdvt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zza:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Event-"

    if-eqz v2, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdvt;->zza(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbcv;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdClicked"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    const-class p1, Lcom/google/android/gms/internal/ads/zzdbx;

    const-string v1, "onPause"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    const-class p1, Lcom/google/android/gms/internal/ads/zzdbx;

    const-string v1, "onResume"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzbC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 1
    const-class p1, Lcom/google/android/gms/internal/ads/zzamv;

    const-string p2, "onAppEvent"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zzb:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zzc:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-class p1, Lcom/google/android/gms/internal/ads/zzdbf;

    const-string v1, "onAdFailedToLoad"

    .line 1
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzbE(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1
    const-class p2, Lcom/google/android/gms/internal/ads/zzfel;

    const-string v0, "onTaskCreated"

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzbF(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1
    const-class p2, Lcom/google/android/gms/internal/ads/zzfel;

    const-string v0, "onTaskStarted"

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzbG(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzc:J

    const-class p1, Lcom/google/android/gms/internal/ads/zzddx;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onAdRequest"

    .line 2
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzbo(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    const-class p1, Lcom/google/android/gms/internal/ads/zzdbx;

    const-string v1, "onDestroy"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/ads/zzfel;

    const-string p3, "onTaskFailed"

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzfem;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1
    const-class p2, Lcom/google/android/gms/internal/ads/zzfel;

    const-string v0, "onTaskSucceeded"

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzf()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzc:J

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Ad Request Latency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/internal/ads/zzdcq;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdLoaded"

    .line 2
    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdImpression"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzh()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdOpened"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdClosed"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdLeftApplication"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzcbz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 1
    const-class p1, Lcom/google/android/gms/internal/ads/zzdbc;

    const-string p2, "onRewarded"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRewardedVideoStarted"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdbc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRewardedVideoCompleted"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zze(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzfal;)V
    .locals 0

    return-void
.end method
