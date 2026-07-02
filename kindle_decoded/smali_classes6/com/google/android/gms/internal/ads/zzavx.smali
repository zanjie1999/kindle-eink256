.class public final Lcom/google/android/gms/internal/ads/zzavx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzavy;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzb:Lcom/google/android/gms/internal/ads/zzavy;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzavx;)Lcom/google/android/gms/internal/ads/zzavy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzb:Lcom/google/android/gms/internal/ads/zzavy;

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzapf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzavq;-><init>(Lcom/google/android/gms/internal/ads/zzavx;Lcom/google/android/gms/internal/ads/zzapf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzc(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzavr;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzavr;-><init>(Lcom/google/android/gms/internal/ads/zzavx;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzavs;-><init>(Lcom/google/android/gms/internal/ads/zzavx;Lcom/google/android/gms/internal/ads/zzanm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zze(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavt;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzavt;-><init>(Lcom/google/android/gms/internal/ads/zzavx;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzf(IIIF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzavu;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Lcom/google/android/gms/internal/ads/zzavx;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzg(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzavv;-><init>(Lcom/google/android/gms/internal/ads/zzavx;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzapf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzavw;-><init>(Lcom/google/android/gms/internal/ads/zzavx;Lcom/google/android/gms/internal/ads/zzapf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
