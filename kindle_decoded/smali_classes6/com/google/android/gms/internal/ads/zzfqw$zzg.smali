.class final Lcom/google/android/gms/internal/ads/zzfqw$zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfqw;Lcom/google/android/gms/internal/ads/zzfsm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzg;->zza:Lcom/google/android/gms/internal/ads/zzfqw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzg;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzg;->zza:Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->zzh(Lcom/google/android/gms/internal/ads/zzfqw;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzg;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->zzs(Lcom/google/android/gms/internal/ads/zzfsm;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqw;->zzg()Lcom/google/android/gms/internal/ads/zzfqw$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzg;->zza:Lcom/google/android/gms/internal/ads/zzfqw;

    .line 3
    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfqw$zza;->zze(Lcom/google/android/gms/internal/ads/zzfqw;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzg;->zza:Lcom/google/android/gms/internal/ads/zzfqw;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->zzt(Lcom/google/android/gms/internal/ads/zzfqw;)V

    :cond_1
    return-void
.end method
