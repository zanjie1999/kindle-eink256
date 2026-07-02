.class public final Lcom/google/android/gms/internal/ads/zzcle;
.super Lcom/google/android/gms/internal/ads/zzcla;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcla;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;)V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgm;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcla;->zzc:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcjb;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzcjb;->zzu(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcla;)V

    :cond_0
    const-string v1, "VideoStreamNoopCache is doing nothing."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    const-string v1, "noop"

    const-string v2, "Noop cache is a noop."

    .line 5
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcla;->zzr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzm()V
    .locals 0

    return-void
.end method
