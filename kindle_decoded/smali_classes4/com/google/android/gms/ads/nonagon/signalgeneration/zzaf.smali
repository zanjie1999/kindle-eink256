.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrk<",
        "Lcom/google/android/gms/internal/ads/zzcbj;",
        "Lcom/google/android/gms/ads/nonagon/signalgeneration/zzah;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdzk;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;->zzb:Lcom/google/android/gms/internal/ads/zzdzk;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;->zzb:Lcom/google/android/gms/internal/ads/zzdzk;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;

    .line 3
    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;->zza:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
