.class final Lcom/google/android/gms/internal/ads/zzfta;
.super Lcom/google/android/gms/internal/ads/zzfsl;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzftb;

.field private final zzb:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzftb;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfta;->zza:Lcom/google/android/gms/internal/ads/zzftb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfta;->zzb:Ljava/util/concurrent/Callable;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfta;->zzb:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfta;->zzb:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfta;->zza:Lcom/google/android/gms/internal/ads/zzftb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->isDone()Z

    move-result v0

    return v0
.end method

.method final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfta;->zza:Lcom/google/android/gms/internal/ads/zzftb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzp(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzg(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfta;->zza:Lcom/google/android/gms/internal/ads/zzftb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzq(Ljava/lang/Throwable;)Z

    return-void
.end method
