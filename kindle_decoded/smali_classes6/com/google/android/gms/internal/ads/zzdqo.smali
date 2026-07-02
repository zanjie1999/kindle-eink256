.class final Lcom/google/android/gms/internal/ads/zzdqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblt;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdqp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqo;->zza:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->zza:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqp;->zzc(Lcom/google/android/gms/internal/ads/zzdqp;)Lcom/google/android/gms/internal/ads/zzdmh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqo;->zza:Lcom/google/android/gms/internal/ads/zzdqp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqp;->zzc(Lcom/google/android/gms/internal/ads/zzdqp;)Lcom/google/android/gms/internal/ads/zzdmh;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzb(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final zzc()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
