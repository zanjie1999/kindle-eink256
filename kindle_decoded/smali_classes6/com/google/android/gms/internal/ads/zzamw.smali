.class public abstract Lcom/google/android/gms/internal/ads/zzamw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanr;
.implements Lcom/google/android/gms/internal/ads/zzans;


# instance fields
.field private final zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzant;

.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzatb;

.field private zzf:J

.field private zzg:Z

.field private zzh:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zza:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzg:Z

    return-void
.end method


# virtual methods
.method protected final zzA(Lcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;Z)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamw;->zze:Lcom/google/android/gms/internal/ads/zzatb;

    move/from16 v4, p3

    invoke-interface {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzatb;->zzd(Lcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;Z)I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapb;->zzc()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamw;->zzg:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamw;->zzh:Z

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const/4 v1, -0x3

    return v1

    :cond_1
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzapg;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzamw;->zzf:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzapg;->zzc:J

    goto/16 :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne v3, v2, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    .line 2
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzw:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzamw;->zzf:J

    new-instance v3, Lcom/google/android/gms/internal/ads/zzanm;

    move-object v9, v3

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzanm;->zza:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzanm;->zze:Ljava/lang/String;

    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzf:Ljava/lang/String;

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzc:Ljava/lang/String;

    iget v14, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzb:I

    iget v15, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzg:I

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzj:I

    move/from16 v16, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzk:I

    move/from16 v17, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzl:F

    move/from16 v18, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzm:I

    move/from16 v19, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzn:F

    move/from16 v20, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzp:[B

    move-object/from16 v21, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzo:I

    move/from16 v22, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzq:Lcom/google/android/gms/internal/ads/zzavh;

    move-object/from16 v23, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzr:I

    move/from16 v24, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzs:I

    move/from16 v25, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzt:I

    move/from16 v26, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzu:I

    move/from16 v27, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzv:I

    move/from16 v28, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzx:I

    move/from16 v29, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzy:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzz:I

    move/from16 v31, v2

    add-long v32, v5, v7

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzh:Ljava/util/List;

    move-object/from16 v34, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzi:Lcom/google/android/gms/internal/ads/zzapk;

    move-object/from16 v35, v2

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanm;->zzd:Lcom/google/android/gms/internal/ads/zzaru;

    move-object/from16 v36, v2

    .line 3
    invoke-direct/range {v9 .. v36}, Lcom/google/android/gms/internal/ads/zzanm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/zzavh;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/zzapk;Lcom/google/android/gms/internal/ads/zzaru;)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    const/4 v1, -0x5

    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method protected final zzB(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zze:Lcom/google/android/gms/internal/ads/zzatb;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzf:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzatb;->zze(J)V

    return-void
.end method

.method protected final zzC()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzg:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzh:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zze:Lcom/google/android/gms/internal/ads/zzatb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatb;->zzb()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zza:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzans;
    .locals 0

    return-object p0
.end method

.method public final zzc(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzc:I

    return-void
.end method

.method public zzd()Lcom/google/android/gms/internal/ads/zzaut;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    return v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzant;[Lcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/zzatb;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzb:Lcom/google/android/gms/internal/ads/zzant;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    .line 2
    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/zzamw;->zzs(Z)V

    .line 3
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/zzamw;->zzh([Lcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/zzatb;J)V

    .line 4
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzamw;->zzu(JZ)V

    return-void
.end method

.method public final zzg()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzv()V

    return-void
.end method

.method public final zzh([Lcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/zzatb;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzh:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamw;->zze:Lcom/google/android/gms/internal/ads/zzatb;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzg:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzf:J

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzamw;->zzt([Lcom/google/android/gms/internal/ads/zzanm;J)V

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzatb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zze:Lcom/google/android/gms/internal/ads/zzatb;

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzg:Z

    return v0
.end method

.method public final zzk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzh:Z

    return-void
.end method

.method public final zzl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzh:Z

    return v0
.end method

.method public final zzm()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zze:Lcom/google/android/gms/internal/ads/zzatb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatb;->zzc()V

    return-void
.end method

.method public final zzn(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzg:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzamw;->zzu(JZ)V

    return-void
.end method

.method public final zzo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzw()V

    return-void
.end method

.method public final zzp()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zze:Lcom/google/android/gms/internal/ads/zzatb;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzh:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzx()V

    return-void
.end method

.method public zzq()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public zzr(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    return-void
.end method

.method protected zzs(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    return-void
.end method

.method protected zzt([Lcom/google/android/gms/internal/ads/zzanm;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    return-void
.end method

.method protected zzu(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzv()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    return-void
.end method

.method protected zzw()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    return-void
.end method

.method protected zzx()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected final zzy()Lcom/google/android/gms/internal/ads/zzant;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzb:Lcom/google/android/gms/internal/ads/zzant;

    return-object v0
.end method

.method protected final zzz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzc:I

    return v0
.end method
