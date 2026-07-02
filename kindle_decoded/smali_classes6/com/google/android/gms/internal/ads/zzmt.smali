.class public final Lcom/google/android/gms/internal/ads/zzmt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzmu;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzmj;-><init>(Lcom/google/android/gms/internal/ads/zzmt;Lcom/google/android/gms/internal/ads/zzaz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzmk;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzmk;-><init>(Lcom/google/android/gms/internal/ads/zzmt;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzml;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzml;-><init>(Lcom/google/android/gms/internal/ads/zzmt;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzd(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmm;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmm;-><init>(Lcom/google/android/gms/internal/ads/zzmt;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zze(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmn;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmn;-><init>(Lcom/google/android/gms/internal/ads/zzmt;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzmo;-><init>(Lcom/google/android/gms/internal/ads/zzmt;Lcom/google/android/gms/internal/ads/zzy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzg(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzmp;

    .line 2
    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzmp;-><init>(Lcom/google/android/gms/internal/ads/zzmt;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzmq;-><init>(Lcom/google/android/gms/internal/ads/zzmt;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmr;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzmr;-><init>(Lcom/google/android/gms/internal/ads/zzmt;Lcom/google/android/gms/internal/ads/zzaz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzj(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzms;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzms;-><init>(Lcom/google/android/gms/internal/ads/zzmt;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic zzk(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmu;->zzA(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zzl(Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmu;->zzw(Lcom/google/android/gms/internal/ads/zzaz;)V

    return-void
.end method

.method final synthetic zzm(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmu;->zzv(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzn(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmu;->zzy(Ljava/lang/Object;J)V

    return-void
.end method

.method final synthetic zzo(Lcom/google/android/gms/internal/ads/zzy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmu;->zzx(Lcom/google/android/gms/internal/ads/zzy;)V

    return-void
.end method

.method final synthetic zzp(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmu;->zzz(JI)V

    return-void
.end method

.method final synthetic zzq(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzmu;->zzu(IJ)V

    return-void
.end method

.method final synthetic zzr(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmu;->zzt(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V

    return-void
.end method

.method final synthetic zzs(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzmu;->zzs(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic zzt(Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzb:Lcom/google/android/gms/internal/ads/zzmu;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmu;->zzr(Lcom/google/android/gms/internal/ads/zzaz;)V

    return-void
.end method
