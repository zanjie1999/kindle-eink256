.class final Lcom/google/android/gms/internal/ads/zzfqt;
.super Lcom/google/android/gms/internal/ads/zzfqv;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfqv<",
        "TV;TX;",
        "Lcom/google/android/gms/internal/ads/zzfrk<",
        "-TX;+TV;>;",
        "Lcom/google/android/gms/internal/ads/zzfsm<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzfrk<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfqv;-><init>(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Ljava/lang/Object;)V

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

.method final bridge synthetic zzb(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
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
