.class public final Lcom/google/android/gms/internal/ads/zzdqk;
.super Lcom/google/android/gms/internal/ads/zzbmv;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdmh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdmm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdmh;Lcom/google/android/gms/internal/ads/zzdmm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbmv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzA()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbmh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzN()Lcom/google/android/gms/internal/ads/zzbmh;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzM()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzk()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzF()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmh;->zzT()V

    return-void
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzw()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    return-object v0
.end method

.method public final zzn(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzf(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzo(Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzg(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final zzp(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzh(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzblz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzx()Lcom/google/android/gms/internal/ads/zzblz;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zzc:Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdmm;->zzJ()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqk;->zza:Ljava/lang/String;

    return-object v0
.end method
