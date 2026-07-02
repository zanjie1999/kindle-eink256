.class public final Lcom/google/android/gms/internal/ads/zzchj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzchh;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzchi;

    const-string v0, "ActiveViewListener.callActiveViewJs"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzchi;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void
.end method
