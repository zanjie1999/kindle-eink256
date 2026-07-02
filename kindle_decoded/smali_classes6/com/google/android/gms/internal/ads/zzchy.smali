.class final Lcom/google/android/gms/internal/ads/zzchy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/media/MediaPlayer;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchy;->zzb:Lcom/google/android/gms/internal/ads/zzcig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchy;->zza:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchy;->zzb:Lcom/google/android/gms/internal/ads/zzcig;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchy;->zza:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcig;->zzu(Lcom/google/android/gms/internal/ads/zzcig;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchy;->zzb:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/zzcih;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchy;->zzb:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/zzcih;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcih;->zzb()V

    :cond_0
    return-void
.end method
