.class public final Lcom/google/android/gms/internal/ads/zzava;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaut;


# instance fields
.field private zza:Z

.field private zzb:J

.field private zzc:J

.field private zzd:Lcom/google/android/gms/internal/ads/zzanq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzanq;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzava;->zzd:Lcom/google/android/gms/internal/ads/zzanq;

    return-void
.end method


# virtual methods
.method public final zzP()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzava;->zzb:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzava;->zza:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzava;->zzc:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzava;->zzd:Lcom/google/android/gms/internal/ads/zzanq;

    .line 2
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzanq;->zzb:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzamx;->zzb(J)J

    move-result-wide v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzanq;->zza(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final zzQ(Lcom/google/android/gms/internal/ads/zzanq;)Lcom/google/android/gms/internal/ads/zzanq;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzava;->zza:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzava;->zzP()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzava;->zzc(J)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzava;->zzd:Lcom/google/android/gms/internal/ads/zzanq;

    return-object p1
.end method

.method public final zzR()Lcom/google/android/gms/internal/ads/zzanq;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzava;->zza:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzava;->zzc:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzava;->zza:Z

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzava;->zza:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzava;->zzP()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzava;->zzc(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzava;->zza:Z

    :cond_0
    return-void
.end method

.method public final zzc(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzava;->zzb:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzava;->zza:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzava;->zzc:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaut;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaut;->zzP()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzava;->zzc(J)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaut;->zzR()Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzava;->zzd:Lcom/google/android/gms/internal/ads/zzanq;

    return-void
.end method
