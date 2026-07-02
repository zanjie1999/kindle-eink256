.class public final Lcom/google/android/gms/internal/ads/zzfez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgy;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfey;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfey;-><init>(Lcom/google/android/gms/internal/ads/zzfez;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfez;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zza(Ljava/lang/String;)V

    return-void
.end method
