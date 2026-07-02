.class final Lcom/google/android/gms/internal/ads/zzfsz;
.super Lcom/google/android/gms/internal/ads/zzfsl;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfsl<",
        "Lcom/google/android/gms/internal/ads/zzfsm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzftb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfrj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzftb;Lcom/google/android/gms/internal/ads/zzfrj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Lcom/google/android/gms/internal/ads/zzftb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:Lcom/google/android/gms/internal/ads/zzfrj;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method final bridge synthetic zza()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfrj;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:Lcom/google/android/gms/internal/ads/zzfrj;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzflx;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:Lcom/google/android/gms/internal/ads/zzfrj;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Lcom/google/android/gms/internal/ads/zzftb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqw;->isDone()Z

    move-result v0

    return v0
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Lcom/google/android/gms/internal/ads/zzftb;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzr(Lcom/google/android/gms/internal/ads/zzfsm;)Z

    return-void
.end method

.method final zzg(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Lcom/google/android/gms/internal/ads/zzftb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzq(Ljava/lang/Throwable;)Z

    return-void
.end method
