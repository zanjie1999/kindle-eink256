.class public final Lcom/google/android/gms/internal/ads/zzaox;
.super Lcom/google/android/gms/internal/ads/zzari;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaut;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzaoi;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaot;

.field private zzd:Z

.field private zze:I

.field private zzf:I

.field private zzg:J

.field private zzh:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzapl;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaoj;)V
    .locals 1

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzaob;

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p3, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzari;-><init>(ILcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzapl;Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaot;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzaov;

    .line 2
    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzaov;-><init>(Lcom/google/android/gms/internal/ads/zzaox;Lcom/google/android/gms/internal/ads/zzaow;)V

    invoke-direct {p1, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzaot;-><init>(Lcom/google/android/gms/internal/ads/zzanz;[Lcom/google/android/gms/internal/ads/zzaob;Lcom/google/android/gms/internal/ads/zzaop;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoi;

    .line 3
    invoke-direct {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzaoi;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaoj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    return-void
.end method

.method static synthetic zzH(Lcom/google/android/gms/internal/ads/zzaox;)Lcom/google/android/gms/internal/ads/zzaoi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    return-object p0
.end method

.method static synthetic zzI(Lcom/google/android/gms/internal/ads/zzaox;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzh:Z

    return p1
.end method


# virtual methods
.method public final zzE()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzE()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzF()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzJ(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzanm;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarm;
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzanm;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzauu;->zza(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzarr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzarg;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    sget v1, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-lt v1, v2, :cond_4

    .line 5
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzanm;->zzs:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzarg;->zzf(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzanm;->zzr:I

    if-eq p2, v2, :cond_4

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzarg;->zzg(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v3, 0x3

    :cond_5
    or-int/lit8 p1, v0, 0x4

    or-int/2addr p1, v3

    return p1
.end method

.method protected final zzK(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzanm;Z)Lcom/google/android/gms/internal/ads/zzarg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarm;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzari;->zzK(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzanm;Z)Lcom/google/android/gms/internal/ads/zzarg;

    move-result-object p1

    return-object p1
.end method

.method protected final zzL(Lcom/google/android/gms/internal/ads/zzarg;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzanm;Landroid/media/MediaCrypto;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzarg;->zza:Ljava/lang/String;

    .line 2
    sget p4, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge p4, v2, :cond_0

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzave;->zzc:Ljava/lang/String;

    const-string p4, "samsung"

    .line 3
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzave;->zzb:Ljava/lang/String;

    const-string p4, "zeroflte"

    .line 4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzave;->zzb:Ljava/lang/String;

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzave;->zzb:Ljava/lang/String;

    const-string p4, "heroqlte"

    .line 5
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzd:Z

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzanm;->zzl()Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected final zzM(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaoi;->zzc(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzN(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzN(Lcom/google/android/gms/internal/ads/zzanm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaoi;->zzd(Lcom/google/android/gms/internal/ads/zzanm;)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzf:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzt:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zze:I

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzr:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzf:I

    return-void
.end method

.method protected final zzO(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const-string p1, "channel-count"

    .line 1
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const-string v0, "sample-rate"

    .line 2
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string v2, "audio/raw"

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzd:Z

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eqz p2, :cond_2

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzf:I

    if-ge p1, v1, :cond_1

    .line 3
    new-array p1, p1, [I

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzf:I

    if-ge p2, v0, :cond_0

    .line 4
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    move-object v7, p1

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    const/4 v3, 0x6

    goto :goto_2

    :cond_2
    move v3, p1

    move-object v7, v0

    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaox;->zze:I

    const/4 v6, 0x0

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaot;->zzc(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaon; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object p1

    throw p1
.end method

.method public final zzP()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaox;->zzF()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaot;->zzb(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzh:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzh:Z

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:J

    return-wide v0
.end method

.method public final zzQ(Lcom/google/android/gms/internal/ads/zzanq;)Lcom/google/android/gms/internal/ads/zzanq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaot;->zzj(Lcom/google/android/gms/internal/ads/zzanq;)Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object p1

    return-object p1
.end method

.method public final zzR()Lcom/google/android/gms/internal/ads/zzanq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzk()Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object v0

    return-object v0
.end method

.method protected final zzS(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p11, :cond_0

    .line 1
    invoke-virtual {p5, p7, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 2
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzapf;->zze:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzapf;->zze:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaot;->zze()V

    return p2

    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    .line 4
    invoke-virtual {p3, p6, p9, p10}, Lcom/google/android/gms/internal/ads/zzaot;->zzf(Ljava/nio/ByteBuffer;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p5, p7, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 6
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzapf;->zzd:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzapf;->zzd:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaoo; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzaos; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_1
    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result p2

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object p1

    throw p1
.end method

.method protected final zzT()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzg()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaos; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v0

    throw v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaut;
    .locals 0

    return-object p0
.end method

.method public final zzr(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaot;->zzl(F)V

    return-void
.end method

.method protected final zzs(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzs(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaoi;->zzb(Lcom/google/android/gms/internal/ads/zzapf;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzy()Lcom/google/android/gms/internal/ads/zzant;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzant;->zzb:I

    return-void
.end method

.method protected final zzu(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzari;->zzu(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaot;->zzn()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzg:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzh:Z

    return-void
.end method

.method protected final zzv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzd()V

    return-void
.end method

.method protected final zzw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzm()V

    return-void
.end method

.method protected final zzx()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzx()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapf;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaoi;->zzf(Lcom/google/android/gms/internal/ads/zzapf;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapf;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaoi;->zzf(Lcom/google/android/gms/internal/ads/zzapf;)V

    .line 5
    throw v0

    :catchall_1
    move-exception v0

    .line 2
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzx()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapf;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaoi;->zzf(Lcom/google/android/gms/internal/ads/zzapf;)V

    .line 6
    throw v0

    :catchall_2
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapf;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaox;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaoi;->zzf(Lcom/google/android/gms/internal/ads/zzapf;)V

    .line 5
    throw v0
.end method
