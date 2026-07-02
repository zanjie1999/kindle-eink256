.class final Lcom/google/android/gms/internal/ads/zztf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzox;

.field private zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private zze:I

.field private zzf:I

.field private zzg:J

.field private zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztf;->zza:Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zzd:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zze:I

    return-void
.end method

.method public final zzb(IJ)V
    .locals 4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztf;->zze:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zzd:Z

    const/16 v1, 0xb3

    const/16 v2, 0xb6

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    const/16 p1, 0xb3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztf;->zzb:Z

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zztf;->zzc:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zzf:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zztf;->zzh:J

    return-void
.end method

.method public final zzc([BII)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zzc:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zzf:I

    add-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, v0

    if-ge v1, p3, :cond_1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztf;->zzd:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztf;->zzc:Z

    return-void

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zzf:I

    :cond_2
    return-void
.end method

.method public final zzd(JIZ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zze:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_0

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zztf;->zzb:Z

    if-eqz p4, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zztf;->zzh:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v1, v3

    if-eqz p4, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zztf;->zzg:J

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zztf;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztf;->zza:Lcom/google/android/gms/internal/ads/zzox;

    sub-long v3, p1, v3

    long-to-int v4, v3

    const/4 v6, 0x0

    move v3, p4

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    :cond_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zztf;->zze:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztf;->zzg:J

    :cond_1
    return-void
.end method
