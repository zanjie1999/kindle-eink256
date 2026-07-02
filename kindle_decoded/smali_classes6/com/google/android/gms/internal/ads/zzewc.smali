.class final Lcom/google/android/gms/internal/ads/zzewc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzelx<",
        "Lcom/google/android/gms/internal/ads/zzcva;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzewd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzewd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzewd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzewd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzewd;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzewd;->zza:Lcom/google/android/gms/internal/ads/zzcva;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcva;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzewd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzewd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzewd;->zza:Lcom/google/android/gms/internal/ads/zzcva;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcva;->zzT()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzewd;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzewd;->zza:Lcom/google/android/gms/internal/ads/zzcva;

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcva;->zza(Lcom/google/android/gms/internal/ads/zzaxq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzewd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzewd;->zzg(Lcom/google/android/gms/internal/ads/zzewd;)Lcom/google/android/gms/internal/ads/zzevv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzewd;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzewd;->zzg(Lcom/google/android/gms/internal/ads/zzewd;)Lcom/google/android/gms/internal/ads/zzevv;

    move-result-object v4

    .line 4
    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcvb;-><init>(Lcom/google/android/gms/internal/ads/zzcva;Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/internal/ads/zzevv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzevv;->zzm(Lcom/google/android/gms/internal/ads/zzaxw;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzS()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
