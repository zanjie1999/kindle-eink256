.class final Lcom/google/android/gms/internal/ads/zzcia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzc:Lcom/google/android/gms/internal/ads/zzcig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcia;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzc:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/zzcih;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzc:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzcig;)Lcom/google/android/gms/internal/ads/zzcih;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcih;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
