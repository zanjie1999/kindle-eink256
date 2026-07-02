.class final Lcom/google/android/gms/internal/ads/zzsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzsg;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:Lcom/google/android/gms/internal/ads/zzsm;

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J

.field private zzl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsm;JJJJZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    cmp-long v1, p4, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzd:Lcom/google/android/gms/internal/ads/zzsm;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzc:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zze:I

    goto :goto_2

    .line 1
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzf:J

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zze:I

    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsg;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzsa;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzb:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzsa;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzc:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzsa;)Lcom/google/android/gms/internal/ads/zzsm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzd:Lcom/google/android/gms/internal/ads/zzsm;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzsa;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzf:J

    return-wide v0
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zznv;)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zze:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_b

    if-eq v2, v3, :cond_c

    const/4 v3, 0x2

    const/4 v10, 0x3

    if-eq v2, v3, :cond_1

    if-eq v2, v10, :cond_0

    return-wide v6

    :cond_0
    move-wide v2, v6

    goto/16 :goto_4

    :cond_1
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzi:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzj:J

    cmp-long v13, v2, v11

    if-nez v13, :cond_2

    :goto_0
    move-wide v2, v6

    move-wide v11, v2

    goto/16 :goto_3

    .line 9
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v2

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzj:J

    .line 1
    invoke-virtual {v11, v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzsg;->zzb(Lcom/google/android/gms/internal/ads/zznv;J)Z

    move-result v11

    if-nez v11, :cond_4

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzi:J

    cmp-long v13, v11, v2

    if-eqz v13, :cond_3

    move-wide v2, v6

    goto/16 :goto_3

    .line 18
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    .line 2
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_4
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    .line 3
    invoke-virtual {v11, v1, v5}, Lcom/google/android/gms/internal/ads/zzsg;->zzc(Lcom/google/android/gms/internal/ads/zznv;Z)Z

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzh:J

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzsg;->zzb:J

    sub-long/2addr v11, v14

    iget v8, v13, Lcom/google/android/gms/internal/ads/zzsg;->zzd:I

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    add-int/2addr v8, v9

    const-wide/16 v16, 0x0

    cmp-long v9, v11, v16

    if-ltz v9, :cond_5

    const-wide/32 v16, 0x11940

    cmp-long v13, v11, v16

    if-gez v13, :cond_5

    goto :goto_0

    :cond_5
    if-gez v9, :cond_6

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzj:J

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzl:J

    goto :goto_1

    .line 6
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v2

    int-to-long v13, v8

    add-long/2addr v2, v13

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzi:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzsg;->zzb:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzk:J

    .line 4
    :goto_1
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzj:J

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzi:J

    sub-long/2addr v2, v13

    const-wide/32 v16, 0x186a0

    cmp-long v15, v2, v16

    if-gez v15, :cond_7

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzj:J

    move-wide v2, v6

    move-wide v11, v13

    goto :goto_3

    :cond_7
    int-to-long v2, v8

    if-gtz v9, :cond_8

    const-wide/16 v8, 0x2

    goto :goto_2

    :cond_8
    const-wide/16 v8, 0x1

    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v13

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzj:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzi:J

    mul-long v2, v2, v8

    sub-long/2addr v13, v2

    sub-long v2, v4, v6

    mul-long v11, v11, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzl:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzk:J

    sub-long/2addr v2, v8

    .line 5
    div-long/2addr v11, v2

    add-long v17, v13, v11

    const-wide/16 v2, -0x1

    add-long v21, v4, v2

    move-wide/from16 v19, v6

    .line 6
    invoke-static/range {v17 .. v22}, Lcom/google/android/gms/internal/ads/zzamq;->zzy(JJJ)J

    move-result-wide v11

    :goto_3
    cmp-long v4, v11, v2

    if-eqz v4, :cond_9

    return-wide v11

    .line 7
    :cond_9
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzsa;->zze:I

    :goto_4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsg;->zzb(Lcom/google/android/gms/internal/ads/zznv;J)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzsg;->zzc(Lcom/google/android/gms/internal/ads/zznv;Z)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzsg;->zzb:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzh:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_a

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzsa;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzk:J

    const-wide/16 v4, 0x2

    add-long/2addr v1, v4

    neg-long v1, v1

    return-wide v1

    :cond_a
    const-wide/16 v4, 0x2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzsg;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zznp;

    add-int/2addr v3, v2

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzi:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzsg;->zzb:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzk:J

    const-wide/16 v2, -0x1

    goto :goto_4

    .line 18
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzg:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzsa;->zze:I

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzc:J

    const-wide/32 v8, -0xff1b

    add-long/2addr v6, v8

    cmp-long v2, v6, v4

    if-lez v2, :cond_c

    return-wide v6

    .line 6
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsg;->zza()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    const-wide/16 v4, -0x1

    .line 12
    invoke-virtual {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzsg;->zzb(Lcom/google/android/gms/internal/ads/zznv;J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 13
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzsg;->zzc(Lcom/google/android/gms/internal/ads/zznv;Z)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzsg;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zznp;

    add-int/2addr v5, v2

    .line 15
    invoke-virtual {v6, v5, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzsg;->zzb:J

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzsg;->zza:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_e

    const-wide/16 v6, -0x1

    .line 16
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzsg;->zzb(Lcom/google/android/gms/internal/ads/zznv;J)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzc:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    .line 17
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzsg;->zzc(Lcom/google/android/gms/internal/ads/zznv;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzsg;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    add-int/2addr v8, v2

    .line 18
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzny;->zzd(Lcom/google/android/gms/internal/ads/zznv;I)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzsg;->zzb:J

    goto :goto_5

    :cond_e
    :goto_6
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzf:J

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzsa;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzsa;->zzg:J

    return-wide v1

    .line 13
    :cond_f
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final zzf(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzf:J

    const-wide/16 v2, -0x1

    add-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzamq;->zzy(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzh:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zze:I

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzb:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzi:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzj:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzk:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzl:J

    return-void
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/internal/ads/zzot;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzf:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrz;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzrz;-><init>(Lcom/google/android/gms/internal/ads/zzsa;Lcom/google/android/gms/internal/ads/zzry;)V

    return-object v0

    :cond_0
    return-object v2
.end method
