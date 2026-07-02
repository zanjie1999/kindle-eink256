.class final Lcom/google/android/gms/internal/ads/zzagq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzhf;

.field public final zzb:J

.field public final zzc:J

.field public final zzd:J

.field public final zze:J

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field public final zzi:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhf;JJJJZZZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p10, 0x0

    const/4 v0, 0x1

    if-eqz p13, :cond_1

    if-eqz p11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    if-eqz p12, :cond_3

    if-eqz p11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 2
    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzd:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzf:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzg:Z

    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzh:Z

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzagq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzagq;->zzd:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzg:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzagq;->zzg:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzh:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzagq;->zzh:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    .line 2
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzo;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzd:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzg:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzh:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzd:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    const/4 v13, 0x0

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzg:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzh:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(Lcom/google/android/gms/internal/ads/zzhf;JJJJZZZZ)V

    return-object v1
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzd:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    const/4 v13, 0x0

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzg:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzh:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(Lcom/google/android/gms/internal/ads/zzhf;JJJJZZZZ)V

    return-object v1
.end method
