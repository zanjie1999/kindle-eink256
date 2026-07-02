.class public final Lcom/google/android/gms/internal/ads/zzcua;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawd;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzctm;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private zze:Z

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzctp;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzctm;Lcom/google/android/gms/common/util/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzf:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzctp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzg:Lcom/google/android/gms/internal/ads/zzctp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzb:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzc:Lcom/google/android/gms/internal/ads/zzctm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzg()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzc:Lcom/google/android/gms/internal/ads/zzctm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzg:Lcom/google/android/gms/internal/ads/zzctp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzctm;->zza(Lcom/google/android/gms/internal/ads/zzctp;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzb:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzctz;

    .line 2
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzctz;-><init>(Lcom/google/android/gms/internal/ads/zzcua;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zze:Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzg:Lcom/google/android/gms/internal/ads/zzctp;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzf:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzawc;->zzj:Z

    .line 1
    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzctp;->zza:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzctp;->zzd:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzg:Lcom/google/android/gms/internal/ads/zzctp;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzctp;->zzf:Lcom/google/android/gms/internal/ads/zzawc;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zze:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcua;->zzg()V

    :cond_1
    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zze:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcua;->zzg()V

    return-void
.end method

.method public final zze(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzf:Z

    return-void
.end method

.method final synthetic zzf(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbsw;->zzr(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
