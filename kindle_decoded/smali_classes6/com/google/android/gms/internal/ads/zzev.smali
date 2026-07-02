.class public final Lcom/google/android/gms/internal/ads/zzev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzde;


# instance fields
.field private zzb:I

.field private zzc:F

.field private zzd:F

.field private zze:Lcom/google/android/gms/internal/ads/zzdc;

.field private zzf:Lcom/google/android/gms/internal/ads/zzdc;

.field private zzg:Lcom/google/android/gms/internal/ads/zzdc;

.field private zzh:Lcom/google/android/gms/internal/ads/zzdc;

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/ads/zzeu;

.field private zzk:Ljava/nio/ByteBuffer;

.field private zzl:Ljava/nio/ShortBuffer;

.field private zzm:Ljava/nio/ByteBuffer;

.field private zzn:J

.field private zzo:J

.field private zzp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzc:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzd:F

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zze:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzf:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzg:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzh:Lcom/google/android/gms/internal/ads/zzdc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzk:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzl:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzm:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdd;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzdc;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzb:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzev;->zze:Lcom/google/android/gms/internal/ads/zzdc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdc;

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdc;->zzc:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdc;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzf:Lcom/google/android/gms/internal/ads/zzdc;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzi:Z

    return-object v2

    .line 1
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    throw v0
.end method

.method public final zzb()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzf:Lcom/google/android/gms/internal/ads/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzc:F

    const/high16 v3, -0x40800000    # -1.0f

    add-float/2addr v0, v3

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzd:F

    add-float/2addr v0, v3

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzf:Lcom/google/android/gms/internal/ads/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzev;->zze:Lcom/google/android/gms/internal/ads/zzdc;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzc(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzj:Lcom/google/android/gms/internal/ads/zzeu;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzev;->zzn:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzev;->zzn:J

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(Ljava/nio/ShortBuffer;)V

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzj:Lcom/google/android/gms/internal/ads/zzeu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzd()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzp:Z

    return-void
.end method

.method public final zze()Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzj:Lcom/google/android/gms/internal/ads/zzeu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzf()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzk:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzl:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzk:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzl:Ljava/nio/ShortBuffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzl:Ljava/nio/ShortBuffer;

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzo:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzo:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzk:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzk:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzm:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzm:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzde;->zza:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzm:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzf()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzj:Lcom/google/android/gms/internal/ads/zzeu;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzf()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final zzg()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzev;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zze:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzg:Lcom/google/android/gms/internal/ads/zzdc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzf:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzh:Lcom/google/android/gms/internal/ads/zzdc;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzi:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeu;

    .line 2
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzdc;->zzc:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzev;->zzc:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzev;->zzd:F

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzev;->zzj:Lcom/google/android/gms/internal/ads/zzeu;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzj:Lcom/google/android/gms/internal/ads/zzeu;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zze()V

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzm:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzn:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzo:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzp:Z

    return-void
.end method

.method public final zzh()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzc:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzd:F

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zze:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzf:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzg:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzh:Lcom/google/android/gms/internal/ads/zzdc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzk:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzl:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzm:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzb:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzi:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzj:Lcom/google/android/gms/internal/ads/zzeu;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzn:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzo:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzp:Z

    return-void
.end method

.method public final zzi(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzc:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzc:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzi:Z

    :cond_0
    return-void
.end method

.method public final zzj(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzd:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzd:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzev;->zzi:Z

    :cond_0
    return-void
.end method

.method public final zzk(J)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzev;->zzo:J

    const-wide/16 v3, 0x400

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzev;->zzn:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzev;->zzj:Lcom/google/android/gms/internal/ads/zzeu;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeu;->zza()I

    move-result v3

    int-to-long v3, v3

    sub-long v7, v1, v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzev;->zzh:Lcom/google/android/gms/internal/ads/zzdc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzev;->zzg:Lcom/google/android/gms/internal/ads/zzdc;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    if-ne v1, v2, :cond_0

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzev;->zzo:J

    move-wide/from16 v5, p1

    .line 2
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    int-to-long v3, v1

    mul-long v11, v7, v3

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzev;->zzo:J

    int-to-long v1, v2

    mul-long v13, v3, v1

    move-wide/from16 v9, p1

    .line 3
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_1
    const/4 v1, 0x0

    .line 4
    throw v1

    :cond_2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzev;->zzc:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method
