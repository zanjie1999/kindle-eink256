.class final Lcom/google/android/gms/internal/ads/zzdwv;
.super Lcom/google/android/gms/internal/ads/zzccy;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zza:Lcom/google/android/gms/internal/ads/zzdwx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzccy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zza:Lcom/google/android/gms/internal/ads/zzdwx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwx;->zze(Lcom/google/android/gms/internal/ads/zzdwx;)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zza:Lcom/google/android/gms/internal/ads/zzdwx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwx;->zzd(Lcom/google/android/gms/internal/ads/zzdwx;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdwm;->zzk(J)V

    return-void
.end method

.method public final zzf(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zza:Lcom/google/android/gms/internal/ads/zzdwx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwx;->zze(Lcom/google/android/gms/internal/ads/zzdwx;)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zza:Lcom/google/android/gms/internal/ads/zzdwx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwx;->zzd(Lcom/google/android/gms/internal/ads/zzdwx;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdwm;->zzl(JI)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zza:Lcom/google/android/gms/internal/ads/zzdwx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwx;->zze(Lcom/google/android/gms/internal/ads/zzdwx;)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zza:Lcom/google/android/gms/internal/ads/zzdwx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwx;->zzd(Lcom/google/android/gms/internal/ads/zzdwx;)J

    move-result-wide v1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->zza:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdwm;->zzl(JI)V

    return-void
.end method
