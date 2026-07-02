.class final Lcom/google/android/gms/internal/ads/zzfrq;
.super Lcom/google/android/gms/internal/ads/zzfrd;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfrd<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfrp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfrp<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfoe;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfoe<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfrd;-><init>(Lcom/google/android/gms/internal/ads/zzfoe;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfro;

    .line 2
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzfro;-><init>(Lcom/google/android/gms/internal/ads/zzfrq;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrq;->zza:Lcom/google/android/gms/internal/ads/zzfrp;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfrd;->zzb()V

    return-void
.end method

.method static synthetic zzJ(Lcom/google/android/gms/internal/ads/zzfrq;Lcom/google/android/gms/internal/ads/zzfrp;)Lcom/google/android/gms/internal/ads/zzfrp;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrq;->zza:Lcom/google/android/gms/internal/ads/zzfrp;

    return-object p1
.end method


# virtual methods
.method final zzA()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrq;->zza:Lcom/google/android/gms/internal/ads/zzfrp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfrp;->zze()V

    :cond_0
    return-void
.end method

.method final zzB(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzB(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrq;->zza:Lcom/google/android/gms/internal/ads/zzfrp;

    :cond_0
    return-void
.end method

.method protected final zzn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrq;->zza:Lcom/google/android/gms/internal/ads/zzfrp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsl;->zzh()V

    :cond_0
    return-void
.end method

.method final zzz(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
