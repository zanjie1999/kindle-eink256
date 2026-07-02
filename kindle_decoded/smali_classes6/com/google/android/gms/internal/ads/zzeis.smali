.class final Lcom/google/android/gms/internal/ads/zzeis;
.super Lcom/google/android/gms/internal/ads/zzccj;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzddi;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdba;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzdcj;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeit;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdba;Lcom/google/android/gms/internal/ads/zzdcj;Lcom/google/android/gms/internal/ads/zzdix;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Lcom/google/android/gms/internal/ads/zzdba;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Lcom/google/android/gms/internal/ads/zzdcj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lcom/google/android/gms/internal/ads/zzdix;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzccj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddi;->zzbp()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lcom/google/android/gms/internal/ads/zzdix;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdix;->zza()V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Lcom/google/android/gms/internal/ads/zzddi;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzddi;->zzbs(I)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzccl;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lcom/google/android/gms/internal/ads/zzdix;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdix;->zzb(Lcom/google/android/gms/internal/ads/zzccl;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Lcom/google/android/gms/internal/ads/zzdba;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdba;->onAdClicked()V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdcj;->zzb()V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdcj;->zzf()V

    return-void
.end method
