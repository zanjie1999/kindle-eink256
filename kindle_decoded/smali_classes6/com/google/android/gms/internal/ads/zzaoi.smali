.class public final Lcom/google/android/gms/internal/ads/zzaoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaoj;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaoj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Lcom/google/android/gms/internal/ads/zzaoj;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzaoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Lcom/google/android/gms/internal/ads/zzaoj;

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzapf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/android/gms/internal/ads/zzapf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzc(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaod;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaod;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoe;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaoe;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/android/gms/internal/ads/zzanm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zze(IJJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaof;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaof;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzapf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaog;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaog;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/android/gms/internal/ads/zzapf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzg(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaoh;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
