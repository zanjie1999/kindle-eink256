.class final synthetic Lcom/google/android/gms/internal/ads/zzayt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchl;

.field private final zzb:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchl;Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayt;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzb:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayt;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzb:Ljava/util/concurrent/Future;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchl;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
