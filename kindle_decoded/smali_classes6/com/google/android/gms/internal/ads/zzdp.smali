.class public final Lcom/google/android/gms/internal/ads/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdq;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzdq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdf;-><init>(Lcom/google/android/gms/internal/ads/zzdp;Lcom/google/android/gms/internal/ads/zzaz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdg;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdg;-><init>(Lcom/google/android/gms/internal/ads/zzdp;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdh;-><init>(Lcom/google/android/gms/internal/ads/zzdp;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzd(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdi;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdi;-><init>(Lcom/google/android/gms/internal/ads/zzdp;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zze(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdj;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdj;-><init>(Lcom/google/android/gms/internal/ads/zzdp;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdk;-><init>(Lcom/google/android/gms/internal/ads/zzdp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdl;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdl;-><init>(Lcom/google/android/gms/internal/ads/zzdp;Lcom/google/android/gms/internal/ads/zzaz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzh(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdm;-><init>(Lcom/google/android/gms/internal/ads/zzdp;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzi(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdn;-><init>(Lcom/google/android/gms/internal/ads/zzdp;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzj(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdo;-><init>(Lcom/google/android/gms/internal/ads/zzdp;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic zzk(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzp(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zzl(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzo(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zzm(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzn(Z)V

    return-void
.end method

.method final synthetic zzn(Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzm(Lcom/google/android/gms/internal/ads/zzaz;)V

    return-void
.end method

.method final synthetic zzo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzp(IJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdq;->zzk(IJJ)V

    return-void
.end method

.method final synthetic zzq(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdq;->zzj(J)V

    return-void
.end method

.method final synthetic zzr(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdq;->zzi(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V

    return-void
.end method

.method final synthetic zzs(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdq;->zzh(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic zzt(Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdp;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzg(Lcom/google/android/gms/internal/ads/zzaz;)V

    return-void
.end method
