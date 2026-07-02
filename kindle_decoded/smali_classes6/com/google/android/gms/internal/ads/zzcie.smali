.class final Lcom/google/android/gms/internal/ads/zzcie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcie;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcie;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/zzcih;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcie;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzb(Lcom/google/android/gms/internal/ads/zzcig;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcie;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/zzcih;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcie;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zzc(Lcom/google/android/gms/internal/ads/zzcig;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcie;->zza:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/zzcih;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzc()V

    :cond_1
    return-void
.end method
