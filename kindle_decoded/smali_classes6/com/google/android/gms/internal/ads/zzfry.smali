.class public abstract Lcom/google/android/gms/internal/ads/zzfry;
.super Lcom/google/android/gms/internal/ads/zzfrw;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfsm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfrw<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/zzfsm<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfrw;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract zzc()Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;"
        }
    .end annotation
.end method

.method public final zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfry;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfsm;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
