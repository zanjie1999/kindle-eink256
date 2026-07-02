.class public final Lcom/google/android/gms/internal/ads/zzcyt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcq;
.implements Lcom/google/android/gms/internal/ads/zzbcv;
.implements Lcom/google/android/gms/internal/ads/zzddx;
.implements Lcom/google/android/gms/internal/ads/zzdbw;
.implements Lcom/google/android/gms/internal/ads/zzdbc;
.implements Lcom/google/android/gms/internal/ads/zzdgj;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcfy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcfy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfy;->zzg()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbdg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfy;->zzb(Lcom/google/android/gms/internal/ads/zzbdg;)V

    return-void
.end method

.method public final zzbG(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzazu;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfy;->zzc()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzazu;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzazu;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfy;->zzd()V

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfy;->zzi(Z)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfy;->zzf()V

    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfy;->zzh()V

    return-void
.end method

.method public final zzj()V
    .locals 0

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzcbz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzl()V
    .locals 0

    return-void
.end method

.method public final zzm()V
    .locals 0

    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    return-void
.end method

.method public final zzo(Z)V
    .locals 0

    return-void
.end method

.method public final zzp()V
    .locals 0

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzfal;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfy;->zze(J)V

    return-void
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyt;->zzb:Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfy;->zzk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
