.class public final Lcom/google/android/gms/internal/ads/zzcfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgm;->zzo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfv;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfv;-><init>(Lcom/google/android/gms/internal/ads/zzcfw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object p2
.end method
