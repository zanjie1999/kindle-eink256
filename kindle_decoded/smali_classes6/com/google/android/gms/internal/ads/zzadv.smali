.class public abstract Lcom/google/android/gms/internal/ads/zzadv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahv;
.implements Lcom/google/android/gms/internal/ads/zzahw;


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/ads/zzafw;

.field private zzc:Lcom/google/android/gms/internal/ads/zzahx;

.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zziu;

.field private zzg:[Lcom/google/android/gms/internal/ads/zzafv;

.field private zzh:J

.field private zzi:J

.field private zzj:Z

.field private zzk:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zza:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzb:Lcom/google/android/gms/internal/ads/zzafw;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    return-void
.end method


# virtual methods
.method public zzE(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    return-void
.end method

.method public zzG()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected zzL([Lcom/google/android/gms/internal/ads/zzafv;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    return-void
.end method

.method public final zzac()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zza:I

    return v0
.end method

.method public final zzad()Lcom/google/android/gms/internal/ads/zzahw;
    .locals 0

    return-object p0
.end method

.method public final zzae(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzd:I

    return-void
.end method

.method public final zzaf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    return v0
.end method

.method public final zzag(Lcom/google/android/gms/internal/ads/zzahx;[Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zziu;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object v7, p0

    move v8, p6

    .line 1
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    move-object v0, p1

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzadv;->zzc:Lcom/google/android/gms/internal/ads/zzahx;

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    move/from16 v0, p7

    .line 2
    invoke-virtual {p0, p6, v0}, Lcom/google/android/gms/internal/ads/zzadv;->zzq(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzadv;->zzai([Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zziu;JJ)V

    move-wide v0, p4

    .line 4
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzadv;->zzr(JZ)V

    return-void
.end method

.method public final zzah()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzs()V

    return-void
.end method

.method public final zzai([Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zziu;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzj:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzf:Lcom/google/android/gms/internal/ads/zziu;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzg:[Lcom/google/android/gms/internal/ads/zzafv;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzh:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzadv;->zzL([Lcom/google/android/gms/internal/ads/zzafv;JJ)V

    return-void
.end method

.method public final zzaj()Lcom/google/android/gms/internal/ads/zziu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzf:Lcom/google/android/gms/internal/ads/zziu;

    return-object v0
.end method

.method public final zzak()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzal()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    return-wide v0
.end method

.method public final zzam()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzj:Z

    return-void
.end method

.method public final zzan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzj:Z

    return v0
.end method

.method public final zzao()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzf:Lcom/google/android/gms/internal/ads/zziu;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziu;->zzc()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final zzap(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzj:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzadv;->zzr(JZ)V

    return-void
.end method

.method public final zzaq()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzt()V

    return-void
.end method

.method public final zzar()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzb:Lcom/google/android/gms/internal/ads/zzafw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafw;->zzb:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzf:Lcom/google/android/gms/internal/ads/zziu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzg:[Lcom/google/android/gms/internal/ads/zzafv;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzj:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzu()V

    return-void
.end method

.method public final zzas()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zze:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzb:Lcom/google/android/gms/internal/ads/zzafw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafw;->zzb:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzv()V

    return-void
.end method

.method protected final zzat()Lcom/google/android/gms/internal/ads/zzafw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzb:Lcom/google/android/gms/internal/ads/zzafw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafw;->zzb:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    return-object v0
.end method

.method protected final zzau()[Lcom/google/android/gms/internal/ads/zzafv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzg:[Lcom/google/android/gms/internal/ads/zzafv;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method protected final zzav()Lcom/google/android/gms/internal/ads/zzahx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzc:Lcom/google/android/gms/internal/ads/zzahx;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method protected final zzaw(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzafv;ZI)Lcom/google/android/gms/internal/ads/zzaeg;
    .locals 9

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzk:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzk:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzahw;->zzH(Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeg; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzk:Z

    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzk:Z

    .line 2
    throw p1

    :catch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzk:Z

    :cond_0
    const/4 v6, 0x4

    .line 3
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahv;->zzc()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzd:I

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .line 4
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzafv;IZI)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object p1

    return-object p1
.end method

.method protected final zzax(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzf:Lcom/google/android/gms/internal/ads/zziu;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zziu;->zzd(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzz;->zzc()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzj:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->zzd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzh:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->zzd:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzi:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    if-eqz v0, :cond_3

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzp:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    .line 7
    new-instance p3, Lcom/google/android/gms/internal/ads/zzaft;

    .line 3
    invoke-direct {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafu;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzp:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzh:J

    add-long/2addr v2, v4

    .line 4
    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzR(J)Lcom/google/android/gms/internal/ads/zzaft;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafv;

    .line 5
    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/zzafu;)V

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    return p2

    .line 6
    :cond_3
    throw v1

    :cond_4
    :goto_0
    return p3

    .line 7
    :cond_5
    throw v1
.end method

.method protected final zzay(J)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzf:Lcom/google/android/gms/internal/ads/zziu;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzh:J

    sub-long/2addr p1, v1

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zziu;->zze(J)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method protected final zzaz()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzj:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadv;->zzf:Lcom/google/android/gms/internal/ads/zziu;

    if-eqz v0, :cond_1

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziu;->zzb()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public zzi()Lcom/google/android/gms/internal/ads/zzalp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzq(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    return-void
.end method

.method protected zzr(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzs()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    return-void
.end method

.method protected zzt()V
    .locals 0

    return-void
.end method

.method protected zzu()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected zzv()V
    .locals 0

    return-void
.end method
