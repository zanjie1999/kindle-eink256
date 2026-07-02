.class public final Lcom/google/android/gms/internal/ads/zzeoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/zzerx;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzeog<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/common/util/Clock;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzery<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzery;JLcom/google/android/gms/common/util/Clock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzery<",
            "TS;>;J",
            "Lcom/google/android/gms/common/util/Clock;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zzb:Lcom/google/android/gms/common/util/Clock;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zzc:Lcom/google/android/gms/internal/ads/zzery;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zzd:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeog;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zzc:Lcom/google/android/gms/internal/ads/zzery;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzery;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zzd:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zzb:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeog;-><init>(Lcom/google/android/gms/internal/ads/zzfsm;JLcom/google/android/gms/common/util/Clock;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeog;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    return-object v0
.end method
