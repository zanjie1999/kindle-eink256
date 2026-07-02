.class public final Lcom/google/android/gms/internal/ads/zztk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzuc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zztq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zztq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zztq;

.field private zze:J

.field private final zzf:[Z

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/ads/zzox;

.field private zzi:Lcom/google/android/gms/internal/ads/zztj;

.field private zzj:Z

.field private zzk:J

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzamf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuc;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zza:Lcom/google/android/gms/internal/ads/zzuc;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzf:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 p2, 0x80

    const/4 p3, 0x7

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 p3, 0x8

    .line 2
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/4 p3, 0x6

    .line 3
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzd:Lcom/google/android/gms/internal/ads/zztq;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzk:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzm:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method

.method private final zzf([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzd:Lcom/google/android/gms/internal/ads/zztq;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zze:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzl:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzk:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzf:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalw;->zze([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzd:Lcom/google/android/gms/internal/ads/zztq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzi:Lcom/google/android/gms/internal/ads/zztj;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztj;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzg:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzh:Lcom/google/android/gms/internal/ads/zzox;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztj;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ads/zztj;-><init>(Lcom/google/android/gms/internal/ads/zzox;ZZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzi:Lcom/google/android/gms/internal/ads/zztj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zza:Lcom/google/android/gms/internal/ads/zzuc;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuc;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V

    return-void
.end method

.method public final zzc(JI)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzk:J

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzl:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzl:Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzh:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zztk;->zze:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zztk;->zze:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztk;->zzh:Lcom/google/android/gms/internal/ads/zzox;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztk;->zzf:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzalw;->zzd([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_a

    add-int/lit8 v5, v4, 0x3

    .line 5
    aget-byte v6, v3, v5

    and-int/lit8 v10, v6, 0x1f

    sub-int v6, v4, v1

    if-lez v6, :cond_0

    .line 6
    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zztk;->zzf([BII)V

    :cond_0
    sub-int v14, v2, v4

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zztk;->zze:J

    int-to-long v11, v14

    sub-long v8, v7, v11

    if-gez v6, :cond_1

    neg-int v4, v6

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zztk;->zzk:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zztk;->zzj:Z

    if-eqz v11, :cond_3

    :cond_2
    move/from16 v18, v2

    move/from16 v17, v5

    goto/16 :goto_2

    .line 43
    :cond_3
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    .line 7
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    .line 8
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zztk;->zzj:Z

    const/4 v12, 0x3

    if-nez v11, :cond_4

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zztq;->zzb()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zztq;->zzb()Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v13, v13, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 10
    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v13, v13, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 11
    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v13, v13, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 12
    invoke-static {v15, v12, v13}, Lcom/google/android/gms/internal/ads/zzalw;->zzb([BII)Lcom/google/android/gms/internal/ads/zzalv;

    move-result-object v13

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v15, v15, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 13
    invoke-static {v1, v12, v15}, Lcom/google/android/gms/internal/ads/zzalw;->zzc([BII)Lcom/google/android/gms/internal/ads/zzalu;

    move-result-object v1

    iget v12, v13, Lcom/google/android/gms/internal/ads/zzalv;->zza:I

    iget v15, v13, Lcom/google/android/gms/internal/ads/zzalv;->zzb:I

    move/from16 v17, v5

    iget v5, v13, Lcom/google/android/gms/internal/ads/zzalv;->zzc:I

    .line 14
    invoke-static {v12, v15, v5}, Lcom/google/android/gms/internal/ads/zzakv;->zza(III)Ljava/lang/String;

    move-result-object v5

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zztk;->zzh:Lcom/google/android/gms/internal/ads/zzox;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzaft;

    .line 15
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    move/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztk;->zzg:Ljava/lang/String;

    .line 16
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v2, "video/avc"

    .line 17
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 18
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzalv;->zze:I

    .line 19
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzS(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzalv;->zzf:I

    .line 20
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzT(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzalv;->zzg:F

    .line 21
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzW(F)Lcom/google/android/gms/internal/ads/zzaft;

    .line 22
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    .line 15
    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zztk;->zzj:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztk;->zzi:Lcom/google/android/gms/internal/ads/zztj;

    .line 24
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zztj;->zza(Lcom/google/android/gms/internal/ads/zzalv;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztk;->zzi:Lcom/google/android/gms/internal/ads/zztj;

    .line 25
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zztj;->zzb(Lcom/google/android/gms/internal/ads/zzalu;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    goto :goto_2

    :cond_4
    move/from16 v18, v2

    move/from16 v17, v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztq;->zzb()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 28
    invoke-static {v2, v12, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zzb([BII)Lcom/google/android/gms/internal/ads/zzalv;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztk;->zzi:Lcom/google/android/gms/internal/ads/zztj;

    .line 29
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zztj;->zza(Lcom/google/android/gms/internal/ads/zzalv;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztq;->zzb()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 31
    invoke-static {v2, v12, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zzc([BII)Lcom/google/android/gms/internal/ads/zzalu;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztk;->zzi:Lcom/google/android/gms/internal/ads/zztj;

    .line 32
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zztj;->zzb(Lcom/google/android/gms/internal/ads/zzalu;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    .line 6
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzd:Lcom/google/android/gms/internal/ads/zztq;

    .line 34
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzd:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 35
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zza([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztk;->zzm:Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztk;->zzd:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    .line 36
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzm:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x4

    .line 37
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zza:Lcom/google/android/gms/internal/ads/zzuc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zztk;->zzm:Lcom/google/android/gms/internal/ads/zzamf;

    .line 38
    invoke-virtual {v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzuc;->zzb(JLcom/google/android/gms/internal/ads/zzamf;)V

    :cond_7
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zztk;->zzi:Lcom/google/android/gms/internal/ads/zztj;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zztk;->zzj:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzl:Z

    move-wide v12, v8

    move/from16 v16, v1

    .line 39
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zztj;->zze(JIZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzl:Z

    :cond_8
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zztk;->zzk:J

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzj:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzb:Lcom/google/android/gms/internal/ads/zztq;

    .line 40
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzc:Lcom/google/android/gms/internal/ads/zztq;

    .line 41
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztk;->zzd:Lcom/google/android/gms/internal/ads/zztq;

    .line 42
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zztk;->zzi:Lcom/google/android/gms/internal/ads/zztj;

    .line 43
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zztj;->zzd(JIJ)V

    move/from16 v1, v17

    move/from16 v2, v18

    goto/16 :goto_0

    .line 44
    :cond_a
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zztk;->zzf([BII)V

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
