.class public final Lcom/google/android/gms/internal/ads/zzamh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaku;

.field private zzb:Z

.field private zzc:J

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzahf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaku;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zza:Lcom/google/android/gms/internal/ads/zzaku;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzahf;->zza:Lcom/google/android/gms/internal/ads/zzahf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zze:Lcom/google/android/gms/internal/ads/zzahf;

    return-void
.end method


# virtual methods
.method public final zzA()Lcom/google/android/gms/internal/ads/zzahf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zze:Lcom/google/android/gms/internal/ads/zzahf;

    return-object v0
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Z

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamh;->zzy()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzamh;->zzc(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Z

    :cond_0
    return-void
.end method

.method public final zzc(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzc:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzd:J

    :cond_0
    return-void
.end method

.method public final zzy()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzc:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzd:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzamh;->zze:Lcom/google/android/gms/internal/ads/zzahf;

    .line 2
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzahf;->zzb:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzahf;->zza(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzahf;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamh;->zzy()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzamh;->zzc(J)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamh;->zze:Lcom/google/android/gms/internal/ads/zzahf;

    return-void
.end method
