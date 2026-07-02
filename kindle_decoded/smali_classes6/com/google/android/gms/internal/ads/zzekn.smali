.class final Lcom/google/android/gms/internal/ads/zzekn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzelx<",
        "Lcom/google/android/gms/internal/ads/zzcvh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeko;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeko;->zzc(Lcom/google/android/gms/internal/ads/zzeko;Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzcvh;

    .line 2
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
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcvh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeko;->zzb(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeko;->zzb(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzT()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzeko;->zzc(Lcom/google/android/gms/internal/ads/zzeko;Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzcvh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeko;->zzb(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxg;->zzS()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
