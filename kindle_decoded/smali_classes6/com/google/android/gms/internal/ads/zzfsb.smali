.class public final Lcom/google/android/gms/internal/ads/zzfsb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/zzfoj;Lcom/google/android/gms/internal/ads/zzfsc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzfrq;-><init>(Lcom/google/android/gms/internal/ads/zzfoe;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
