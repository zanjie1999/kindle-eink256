.class final synthetic Lcom/google/android/gms/internal/ads/zzefj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxe;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefj;->zza:Lcom/google/android/gms/internal/ads/zzeef;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefj;->zza:Lcom/google/android/gms/internal/ads/zzeef;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbxn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbxn;->zzh()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
