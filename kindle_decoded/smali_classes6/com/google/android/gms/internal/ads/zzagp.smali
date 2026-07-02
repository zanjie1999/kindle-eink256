.class final Lcom/google/android/gms/internal/ads/zzagp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzhe;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:[Lcom/google/android/gms/internal/ads/zziu;

.field public zzd:Z

.field public zze:Z

.field public zzf:Lcom/google/android/gms/internal/ads/zzagq;

.field public zzg:Z

.field private final zzh:[Z

.field private final zzi:[Lcom/google/android/gms/internal/ads/zzahw;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzjz;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzagz;

.field private zzl:Lcom/google/android/gms/internal/ads/zzagp;

.field private zzm:Lcom/google/android/gms/internal/ads/zzs;

.field private zzn:Lcom/google/android/gms/internal/ads/zzka;

.field private zzo:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzahw;JLcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzko;Lcom/google/android/gms/internal/ads/zzagz;Lcom/google/android/gms/internal/ads/zzagq;Lcom/google/android/gms/internal/ads/zzka;[B)V
    .locals 8

    move-object v0, p0

    move-object v1, p6

    move-object v2, p7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzi:[Lcom/google/android/gms/internal/ads/zzahw;

    move-wide v3, p2

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:J

    move-object v3, p4

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzj:Lcom/google/android/gms/internal/ads/zzjz;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzk:Lcom/google/android/gms/internal/ads/zzagz;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzs;->zza:Lcom/google/android/gms/internal/ads/zzs;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzm:Lcom/google/android/gms/internal/ads/zzs;

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzka;

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/google/android/gms/internal/ads/zziu;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    new-array v4, v4, [Z

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzh:[Z

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzagq;->zzd:J

    move-object v2, p5

    .line 2
    invoke-virtual {p6, v3, p5, v4, v5}, Lcom/google/android/gms/internal/ads/zzagz;->zzo(Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzko;J)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v2

    if-eqz v4, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgm;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object p1, v2

    move-object p2, v1

    move p3, v3

    move-wide p4, v4

    move-wide p6, v6

    .line 3
    invoke-direct/range {p1 .. p7}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzhe;ZJJ)V

    move-object v1, v2

    :cond_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    return-void
.end method

.method private final zzs()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzka;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzka;->zza:I

    if-ge v0, v2, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzka;->zza(I)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzka;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzt()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzka;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzka;->zza:I

    if-ge v0, v2, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzka;->zza(I)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzka;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzu()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzl:Lcom/google/android/gms/internal/ads/zzagp;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:J

    return-wide v0
.end method

.method public final zzb(J)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:J

    return-void
.end method

.method public final zzc()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzd()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zze:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzh()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

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

.method public final zze()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zze:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzh()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final zzf()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(FLcom/google/android/gms/internal/ads/zzaiq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzd()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzm:Lcom/google/android/gms/internal/ads/zzs;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagp;->zzj(FLcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzka;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 3
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    .line 4
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzagq;->zze:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzagp;->zzk(Lcom/google/android/gms/internal/ads/zzka;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 7
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzagq;->zzb:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:J

    .line 8
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzagq;->zza(J)Lcom/google/android/gms/internal/ads/zzagq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    return-void
.end method

.method public final zzh(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzu()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:J

    sub-long/2addr p1, v1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzf(J)V

    :cond_0
    return-void
.end method

.method public final zzi(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzu()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    sub-long/2addr p1, v0

    .line 2
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzl(J)Z

    return-void
.end method

.method public final zzj(FLcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzka;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzj:Lcom/google/android/gms/internal/ads/zzjz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzi:[Lcom/google/android/gms/internal/ads/zzahw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzm:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzjz;->zzj([Lcom/google/android/gms/internal/ads/zzahw;Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzka;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzka;JZ)J
    .locals 6

    const/4 p4, 0x2

    new-array v5, p4, [Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzagp;->zzl(Lcom/google/android/gms/internal/ads/zzka;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzka;JZ[Z)J
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzka;->zza:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzh:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzka;

    invoke-virtual {p1, v6, v3}, Lcom/google/android/gms/internal/ads/zzka;->zzb(Lcom/google/android/gms/internal/ads/zzka;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzi:[Lcom/google/android/gms/internal/ads/zzahw;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    .line 2
    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzahw;->zzac()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzt()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzka;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzs()V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzh:[Z

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    move-object/from16 v11, p5

    move-wide/from16 v12, p2

    .line 5
    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzhe;->zzq([Lcom/google/android/gms/internal/ads/zzjg;[Z[Lcom/google/android/gms/internal/ads/zziu;[ZJ)J

    move-result-wide v3

    const/4 v7, 0x0

    :goto_3
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzi:[Lcom/google/android/gms/internal/ads/zzahw;

    if-ge v7, v6, :cond_3

    .line 6
    aget-object v8, v8, v7

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzahw;->zzac()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzagp;->zze:Z

    const/4 v7, 0x0

    :goto_4
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[Lcom/google/android/gms/internal/ads/zziu;

    if-ge v7, v6, :cond_6

    aget-object v8, v8, v7

    if-eqz v8, :cond_4

    .line 7
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzka;->zza(I)Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzagp;->zzi:[Lcom/google/android/gms/internal/ads/zzahw;

    aget-object v8, v8, v7

    .line 8
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzahw;->zzac()I

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzagp;->zze:Z

    goto :goto_6

    :cond_4
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    .line 9
    aget-object v8, v8, v7

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    return-wide v3
.end method

.method public final zzm()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzk:Lcom/google/android/gms/internal/ads/zzagz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    .line 2
    :try_start_0
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzgm;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgm;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzf(Lcom/google/android/gms/internal/ads/zzhe;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzf(Lcom/google/android/gms/internal/ads/zzhe;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzagp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzl:Lcom/google/android/gms/internal/ads/zzagp;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzt()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzl:Lcom/google/android/gms/internal/ads/zzagp;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagp;->zzs()V

    return-void
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzagp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzl:Lcom/google/android/gms/internal/ads/zzagp;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzm:Lcom/google/android/gms/internal/ads/zzs;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzka;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzka;

    return-object v0
.end method

.method public final zzr()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzhe;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgm;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagq;

    .line 2
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzagq;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    .line 3
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgm;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgm;->zza(JJ)V

    :cond_1
    return-void
.end method
