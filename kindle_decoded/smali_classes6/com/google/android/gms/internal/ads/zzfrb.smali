.class final Lcom/google/android/gms/internal/ads/zzfrb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsm;

.field final synthetic zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfrd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfsm;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zzc:Lcom/google/android/gms/internal/ads/zzfrd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zzb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zzc:Lcom/google/android/gms/internal/ads/zzfrd;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfrd;->zza(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zzc:Lcom/google/android/gms/internal/ads/zzfrd;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfqw;->cancel(Z)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zzc:Lcom/google/android/gms/internal/ads/zzfrd;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zzb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfrd;->zzx(Lcom/google/android/gms/internal/ads/zzfrd;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zzc:Lcom/google/android/gms/internal/ads/zzfrd;

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfrd;->zzy(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfoe;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfrb;->zzc:Lcom/google/android/gms/internal/ads/zzfrd;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfrd;->zzy(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfoe;)V

    .line 6
    throw v1
.end method
