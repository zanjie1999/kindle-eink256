.class final Lcom/google/android/gms/internal/ads/zzfqy;
.super Lcom/google/android/gms/internal/ads/zzfra;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfra<",
        "TI;TO;",
        "Lcom/google/android/gms/internal/ads/zzfrk<",
        "-TI;+TO;>;",
        "Lcom/google/android/gms/internal/ads/zzfsm<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/ads/zzfrk<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfra;-><init>(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsm;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzr(Lcom/google/android/gms/internal/ads/zzfsm;)Z

    return-void
.end method

.method final bridge synthetic zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrk;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzfrk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 3
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzflx;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
