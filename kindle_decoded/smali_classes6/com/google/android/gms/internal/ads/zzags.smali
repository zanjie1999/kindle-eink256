.class final Lcom/google/android/gms/internal/ads/zzags;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzain;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaip;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcy;

.field private final zzd:Landroid/os/Handler;

.field private zze:J

.field private zzf:I

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzagp;

.field private zzi:Lcom/google/android/gms/internal/ads/zzagp;

.field private zzj:Lcom/google/android/gms/internal/ads/zzagp;

.field private zzk:I

.field private zzl:Ljava/lang/Object;

.field private zzm:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcy;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzc:Lcom/google/android/gms/internal/ads/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzd:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzain;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaip;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    return-void
.end method

.method private final zzA(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;Z)Z
    .locals 7

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    const/4 v6, 0x0

    .line 2
    invoke-virtual {p1, v1, p2, v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object p2

    .line 3
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object p2

    .line 5
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzh:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzags;->zzf:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzags;->zzg:Z

    move-object v0, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzu(ILcom/google/android/gms/internal/ads/zzain;Lcom/google/android/gms/internal/ads/zzaip;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v6
.end method

.method private final zzB(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;I)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzain;->zzb(I)J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzain;->zzk(I)J

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private static final zzC(Lcom/google/android/gms/internal/ads/zzhf;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzs()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzu()Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfog;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzd:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagr;

    .line 4
    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzagr;-><init>(Lcom/google/android/gms/internal/ads/zzags;Lcom/google/android/gms/internal/ads/zzfog;Lcom/google/android/gms/internal/ads/zzhf;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static zzt(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzhf;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    .line 2
    invoke-virtual {p6, p2, p3}, Lcom/google/android/gms/internal/ads/zzain;->zze(J)I

    move-result v2

    const/4 p0, -0x1

    if-ne v2, p0, :cond_0

    .line 3
    invoke-virtual {p6, p2, p3}, Lcom/google/android/gms/internal/ads/zzain;->zzf(J)I

    move-result p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhf;

    .line 4
    invoke-direct {p2, p1, p4, p5, p0}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p6, v2}, Lcom/google/android/gms/internal/ads/zzain;->zzc(I)I

    move-result v3

    new-instance p0, Lcom/google/android/gms/internal/ads/zzhf;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private final zzu(Lcom/google/android/gms/internal/ads/zzaiq;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzags;->zzf:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzags;->zzg:Z

    move-object v2, p1

    .line 2
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzu(ILcom/google/android/gms/internal/ads/zzain;Lcom/google/android/gms/internal/ads/zzaip;IZ)I

    move-result v3

    .line 3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzagq;->zzg:Z

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 7
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzags;->zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z

    move-result v2

    .line 8
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzo(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzagq;)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    if-nez v2, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private final zzv(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzagp;J)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    .line 1
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    .line 2
    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/zzagq;->zzg:Z

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    iget v0, v9, Lcom/google/android/gms/internal/ads/zzags;->zzf:I

    iget-boolean v5, v9, Lcom/google/android/gms/internal/ads/zzags;->zzg:Z

    move v4, v0

    move-object/from16 v0, p1

    const-wide/16 v12, 0x0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzu(ILcom/google/android/gms/internal/ads/zzain;Lcom/google/android/gms/internal/ads/zzaip;IZ)I

    move-result v0

    if-ne v0, v14, :cond_0

    return-object v15

    :cond_0
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    .line 6
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    .line 7
    invoke-virtual {v8, v3, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v2

    .line 8
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    if-ne v2, v0, :cond_3

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzw(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v15

    .line 11
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Ljava/lang/Object;

    .line 13
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    goto :goto_0

    .line 16
    :cond_2
    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzags;->zze:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/google/android/gms/internal/ads/zzags;->zze:J

    :goto_0
    move-wide v10, v2

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_3
    move-wide v10, v12

    .line 14
    :goto_1
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    move-object/from16 v0, p1

    move-wide v2, v10

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzags;->zzt(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v10

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzags;->zzw(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;JJ)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v12, 0x0

    .line 17
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 18
    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzain;->zzg(I)I

    move-result v0

    if-ne v0, v14, :cond_5

    return-object v15

    :cond_5
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    .line 20
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzain;->zzd(II)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 21
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzags;->zzx(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v0

    return-object v0

    .line 22
    :cond_6
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 24
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzw(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v15

    .line 25
    :cond_7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_8
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    .line 26
    invoke-direct {v9, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzB(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;I)J

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 27
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzags;->zzy(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzain;->zzc(I)I

    move-result v4

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzain;->zzg(I)I

    move-result v0

    if-ne v4, v0, :cond_a

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    .line 31
    invoke-direct {v9, v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzB(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;I)J

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 32
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzags;->zzy(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    .line 33
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzags;->zzx(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v0

    return-object v0
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;JJ)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 12

    move-object v0, p2

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzags;->zzx(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzags;->zzy(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v0

    return-object v0
.end method

.method private final zzx(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzhf;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    move-object/from16 v3, p1

    .line 2
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzain;->zzh(II)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    move/from16 v2, p3

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzain;->zzc(I)I

    move-result v1

    move/from16 v2, p4

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzain;->zzi()J

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzain;->zzj(I)Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v1

    if-eqz v5, :cond_1

    cmp-long v1, v9, v3

    if-gtz v1, :cond_1

    const-wide/16 v1, -0x1

    add-long/2addr v1, v9

    .line 7
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/ads/zzagq;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v15

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v11

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    .line 8
    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(Lcom/google/android/gms/internal/ads/zzhf;JJJJZZZZ)V

    return-object v15
.end method

.method private final zzy(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 2
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzain;->zzf(J)I

    move-result v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhf;

    move-wide/from16 v8, p7

    .line 3
    invoke-direct {v7, v2, v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzags;->zzC(Lcom/google/android/gms/internal/ads/zzhf;)Z

    move-result v2

    .line 4
    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;)Z

    move-result v18

    .line 5
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzA(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;Z)Z

    move-result v19

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 6
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzain;->zzj(I)Z

    :cond_0
    const-wide/16 v8, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzain;->zzb(I)J

    move-wide v12, v8

    goto :goto_0

    :cond_1
    move-wide v12, v10

    :goto_0
    cmp-long v1, v12, v10

    if-eqz v1, :cond_2

    move-wide v14, v12

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    move-wide v14, v5

    :goto_1
    cmp-long v1, v14, v10

    if-eqz v1, :cond_3

    cmp-long v1, v3, v14

    if-ltz v1, :cond_3

    const-wide/16 v3, -0x1

    add-long/2addr v3, v14

    .line 8
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    move-wide v8, v3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagq;

    const/16 v16, 0x0

    move-object v6, v1

    move-wide/from16 v10, p5

    move/from16 v17, v2

    .line 9
    invoke-direct/range {v6 .. v19}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(Lcom/google/android/gms/internal/ads/zzhf;JJJJZZZZ)V

    return-object v1
.end method

.method private final zzz(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;)Z
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzags;->zzC(Lcom/google/android/gms/internal/ads/zzhf;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzb:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaiq;I)Z
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzf:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzags;->zzu(Lcom/google/android/gms/internal/ads/zzaiq;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaiq;Z)Z
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzg:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzags;->zzu(Lcom/google/android/gms/internal/ads/zzaiq;)Z

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhe;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzd(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagp;->zzh(J)V

    :cond_0
    return-void
.end method

.method public final zze()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzagq;->zzi:Z

    if-nez v3, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzf(JLcom/google/android/gms/internal/ads/zzahd;)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    if-nez v0, :cond_0

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzags;->zzw(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;JJ)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzags;->zzv(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzagp;J)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzagp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzagp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzagp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzagp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzags;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzagp;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzm()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzl:Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzm:J

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzags;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v1, 0x1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzagp;->zzm()V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzn(Lcom/google/android/gms/internal/ads/zzagp;)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzags;->zzs()V

    return v1
.end method

.method public final zzm()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzl:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzm:J

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzm()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzags;->zzs()V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzaiq;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_b

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    const/4 v6, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzags;->zzo(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzagq;)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v7, p2

    .line 2
    invoke-direct {v0, v1, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzags;->zzv(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzagp;J)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v9

    if-nez v9, :cond_2

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    return v6

    .line 3
    :cond_2
    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_9

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v3, v9

    .line 4
    :goto_1
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    .line 5
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(J)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 6
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v13

    if-eqz v5, :cond_8

    cmp-long v5, v9, v11

    if-nez v5, :cond_3

    goto :goto_4

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzr()V

    .line 10
    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    cmp-long v1, v7, v13

    if-nez v1, :cond_4

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 10
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    if-ne v2, v1, :cond_6

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 11
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzagq;->zzf:Z

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, p4, v9

    if-eqz v1, :cond_5

    cmp-long v1, p4, v7

    if-ltz v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 12
    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    return v4

    :cond_7
    return v6

    .line 6
    :cond_8
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_0

    .line 8
    :cond_9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzl(Lcom/google/android/gms/internal/ads/zzagp;)Z

    move-result v1

    if-nez v1, :cond_a

    return v4

    :cond_a
    return v6

    :cond_b
    return v4
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzagq;)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzags;->zzC(Lcom/google/android/gms/internal/ads/zzhf;)Z

    move-result v12

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;)Z

    move-result v13

    .line 3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzags;->zzA(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;Z)Z

    move-result v14

    .line 4
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 5
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzain;->zzb(I)J

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    .line 4
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    .line 6
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzain;->zzh(II)J

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_3

    :cond_2
    cmp-long v1, v7, v5

    if-eqz v1, :cond_3

    move-wide v9, v7

    goto :goto_3

    .line 8
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    goto :goto_2

    .line 6
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    .line 7
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzain;->zzj(I)Z

    goto :goto_4

    .line 9
    :cond_4
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    if-eq v1, v4, :cond_5

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 8
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzain;->zzj(I)Z

    .line 7
    :cond_5
    :goto_4
    new-instance v15, Lcom/google/android/gms/internal/ads/zzagq;

    .line 9
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    const/4 v11, 0x0

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(Lcom/google/android/gms/internal/ads/zzhf;JJJJZZZZ)V

    return-object v15
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzhf;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzl:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 3
    invoke-virtual {p1, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    .line 4
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    if-ne v1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzm:J

    :cond_0
    :goto_0
    move-wide v7, v0

    goto :goto_3

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Ljava/lang/Object;

    .line 5
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    :goto_2
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    .line 8
    invoke-virtual {p1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v4

    .line 9
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    if-ne v4, v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zzo()Lcom/google/android/gms/internal/ads/zzagp;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zze:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zze:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    if-nez v2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzags;->zzl:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzm:J

    goto :goto_0

    .line 4
    :goto_3
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzags;->zza:Lcom/google/android/gms/internal/ads/zzain;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    .line 11
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzags;->zzt(Lcom/google/android/gms/internal/ads/zzaiq;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzq(Lcom/google/android/gms/internal/ads/zzfog;Lcom/google/android/gms/internal/ads/zzhf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzc:Lcom/google/android/gms/internal/ads/zzcy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzf()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcy;->zze(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhf;)V

    return-void
.end method

.method public final zzr([Lcom/google/android/gms/internal/ads/zzahw;Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzko;Lcom/google/android/gms/internal/ads/zzagz;Lcom/google/android/gms/internal/ads/zzagq;Lcom/google/android/gms/internal/ads/zzka;)Lcom/google/android/gms/internal/ads/zzagp;
    .locals 12

    move-object v0, p0

    move-object/from16 v8, p5

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/zzagq;->zzc:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    move-wide v3, v4

    goto :goto_0

    :cond_0
    move-wide v3, v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzagp;->zza()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    .line 1
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    add-long/2addr v1, v3

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    sub-long/2addr v1, v3

    move-wide v3, v1

    .line 2
    :goto_0
    new-instance v11, Lcom/google/android/gms/internal/ads/zzagp;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzagp;-><init>([Lcom/google/android/gms/internal/ads/zzahw;JLcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzko;Lcom/google/android/gms/internal/ads/zzagz;Lcom/google/android/gms/internal/ads/zzagq;Lcom/google/android/gms/internal/ads/zzka;[B)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzagp;->zzn(Lcom/google/android/gms/internal/ads/zzagp;)V

    goto :goto_1

    .line 4
    :cond_2
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzags;->zzh:Lcom/google/android/gms/internal/ads/zzagp;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzags;->zzi:Lcom/google/android/gms/internal/ads/zzagp;

    :goto_1
    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zzl:Ljava/lang/Object;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzags;->zzj:Lcom/google/android/gms/internal/ads/zzagp;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzags;->zzk:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzags;->zzs()V

    return-object v11
.end method
