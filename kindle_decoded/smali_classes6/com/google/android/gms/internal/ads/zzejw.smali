.class final Lcom/google/android/gms/internal/ads/zzejw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdjj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzejx;Lcom/google/android/gms/internal/ads/zzdjj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejw;->zza:Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejw;->zza:Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxh;->zzc()Lcom/google/android/gms/internal/ads/zzdba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdba;->onAdClicked()V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejw;->zza:Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxh;->zzd()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbu;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejw;->zza:Lcom/google/android/gms/internal/ads/zzdjj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxh;->zze()Lcom/google/android/gms/internal/ads/zzdiq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiq;->zza()V

    return-void
.end method
