.class public final Lcom/google/android/gms/internal/ads/zzqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzaju;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzon;

.field private final zze:Lcom/google/android/gms/internal/ads/zzoj;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzol;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzox;

.field private zzh:Lcom/google/android/gms/internal/ads/zznx;

.field private zzi:Lcom/google/android/gms/internal/ads/zzox;

.field private zzj:Lcom/google/android/gms/internal/ads/zzox;

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzaiv;

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:I

.field private zzq:Lcom/google/android/gms/internal/ads/zzqs;

.field private zzr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Lcom/google/android/gms/internal/ads/zzaju;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqq;->zzb:Lcom/google/android/gms/internal/ads/zzaju;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqq;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzon;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzon;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoj;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzoj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zze:Lcom/google/android/gms/internal/ads/zzoj;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzm:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzol;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzol;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzf:Lcom/google/android/gms/internal/ads/zzol;

    new-instance p1, Lcom/google/android/gms/internal/ads/zznt;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zznt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzg:Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zznv;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzk:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(Lcom/google/android/gms/internal/ads/zznv;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    const/4 v8, 0x1

    if-nez v2, :cond_15

    new-instance v14, Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    .line 2
    invoke-direct {v14, v2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    move-object v15, v1

    check-cast v15, Lcom/google/android/gms/internal/ads/zznp;

    .line 3
    invoke-virtual {v15, v2, v4, v9, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzon;->zza:I

    and-int/2addr v9, v8

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzon;->zze:I

    if-eq v2, v8, :cond_2

    const/16 v2, 0x24

    goto :goto_1

    .line 7
    :cond_1
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzon;->zze:I

    if-eq v2, v8, :cond_3

    :cond_2
    const/16 v2, 0x15

    goto :goto_1

    :cond_3
    const/16 v11, 0xd

    const/16 v2, 0xd

    .line 3
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v9

    add-int/lit8 v11, v2, 0x4

    const v12, 0x58696e67

    const v13, 0x56425249

    const v8, 0x496e666f

    if-lt v9, v11, :cond_5

    .line 4
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    if-eq v9, v12, :cond_4

    if-ne v9, v8, :cond_5

    const v11, 0x496e666f

    goto :goto_2

    :cond_4
    move v11, v9

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v9

    const/16 v11, 0x28

    if-lt v9, v11, :cond_6

    .line 6
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    if-ne v9, v13, :cond_6

    const v11, 0x56425249

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eq v11, v12, :cond_9

    if-ne v11, v8, :cond_7

    goto :goto_3

    :cond_7
    if-ne v11, v13, :cond_8

    .line 29
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    .line 16
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzqt;->zza(JJLcom/google/android/gms/internal/ads/zzon;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    .line 17
    invoke-virtual {v15, v8, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    goto :goto_4

    .line 18
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    const/4 v2, 0x0

    goto :goto_4

    .line 5
    :cond_9
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v12

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    move v5, v11

    move-wide v11, v12

    move-object v13, v7

    .line 8
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzqu;->zza(JJLcom/google/android/gms/internal/ads/zzon;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzqq;->zze:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoj;->zzb()Z

    move-result v7

    if-nez v7, :cond_b

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    add-int/lit16 v2, v2, 0x8d

    .line 10
    invoke-virtual {v15, v2, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    const/4 v7, 0x3

    .line 11
    invoke-virtual {v15, v2, v4, v7, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zze:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 13
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v7

    shr-int/lit8 v9, v7, 0xc

    and-int/lit16 v7, v7, 0xfff

    if-gtz v9, :cond_a

    if-lez v7, :cond_b

    :cond_a
    iput v9, v2, Lcom/google/android/gms/internal/ads/zzoj;->zza:I

    iput v7, v2, Lcom/google/android/gms/internal/ads/zzoj;->zzb:I

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    .line 14
    invoke-virtual {v15, v2, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    if-eqz v6, :cond_c

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzot;->zze()Z

    move-result v2

    if-nez v2, :cond_c

    if-ne v5, v8, :cond_c

    .line 15
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzqq;->zzj(Lcom/google/android/gms/internal/ads/zznv;Z)Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v2

    goto :goto_4

    :cond_c
    move-object v2, v6

    :goto_4
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzl:Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v6

    if-eqz v5, :cond_10

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaiv;->zza()I

    move-result v8

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_10

    .line 20
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzaiv;->zzb(I)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v10

    .line 21
    instance-of v11, v10, Lcom/google/android/gms/internal/ads/zzakb;

    if-eqz v11, :cond_f

    .line 22
    check-cast v10, Lcom/google/android/gms/internal/ads/zzakb;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaiv;->zza()I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_e

    .line 24
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzaiv;->zzb(I)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v11

    .line 25
    instance-of v12, v11, Lcom/google/android/gms/internal/ads/zzakf;

    if-eqz v12, :cond_d

    check-cast v11, Lcom/google/android/gms/internal/ads/zzakf;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzajx;->zzf:Ljava/lang/String;

    const-string v13, "TLEN"

    .line 26
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 27
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzakf;->zzb:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v8

    goto :goto_7

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    :goto_7
    invoke-static {v6, v7, v10, v8, v9}, Lcom/google/android/gms/internal/ads/zzqn;->zza(JLcom/google/android/gms/internal/ads/zzakb;J)Lcom/google/android/gms/internal/ads/zzqn;

    move-result-object v5

    goto :goto_8

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    :goto_8
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzr:Z

    if-eqz v6, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqr;

    .line 28
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzqr;-><init>()V

    goto :goto_a

    :cond_11
    if-eqz v5, :cond_12

    move-object v2, v5

    goto :goto_9

    :cond_12
    if-nez v2, :cond_13

    const/4 v2, 0x0

    :cond_13
    :goto_9
    if-eqz v2, :cond_14

    .line 52
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzot;->zze()Z

    goto :goto_a

    .line 29
    :cond_14
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzqq;->zzj(Lcom/google/android/gms/internal/ads/zznv;Z)Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v2

    .line 28
    :goto_a
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzh:Lcom/google/android/gms/internal/ads/zznx;

    .line 30
    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaft;

    .line 31
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzon;->zzb:Ljava/lang/String;

    .line 32
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const/16 v6, 0x1000

    .line 33
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzO(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzon;->zze:I

    .line 34
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzon;->zzd:I

    .line 35
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zze:Lcom/google/android/gms/internal/ads/zzoj;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzoj;->zza:I

    .line 36
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzad(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zze:Lcom/google/android/gms/internal/ads/zzoj;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzoj;->zzb:I

    .line 37
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzae(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzl:Lcom/google/android/gms/internal/ads/zzaiv;

    .line 38
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzL(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    .line 31
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzo:J

    goto :goto_b

    .line 7
    :cond_15
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzo:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_16

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzo:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_16

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zznp;

    sub-long/2addr v7, v5

    long-to-int v5, v7

    .line 40
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 31
    :cond_16
    :goto_b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzp:I

    if-nez v2, :cond_1c

    .line 41
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    .line 42
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzqq;->zzi(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_f

    :cond_17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 43
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v2

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzk:I

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzqq;->zzk(IJ)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 45
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzoo;->zzh(I)I

    move-result v5

    if-ne v5, v3, :cond_18

    goto :goto_c

    .line 46
    :cond_18
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    .line 47
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzon;->zza(I)Z

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzm:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v7

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v5

    .line 48
    invoke-interface {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzqs;->zzb(J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzm:J

    :cond_19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzp:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 49
    instance-of v7, v6, Lcom/google/android/gms/internal/ads/zzqm;

    if-nez v7, :cond_1a

    move v2, v5

    goto :goto_d

    .line 53
    :cond_1a
    check-cast v6, Lcom/google/android/gms/internal/ads/zzqm;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzn:J

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzon;->zzg:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 54
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzqq;->zzg(J)J

    const/4 v1, 0x0

    .line 55
    throw v1

    .line 45
    :cond_1b
    :goto_c
    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v5, 0x1

    .line 46
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzk:I

    goto :goto_e

    :cond_1c
    :goto_d
    const/4 v5, 0x1

    .line 49
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    .line 50
    invoke-interface {v6, v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzox;->zzx(Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result v1

    if-ne v1, v3, :cond_1d

    goto :goto_f

    :cond_1d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzp:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzp:I

    if-lez v2, :cond_1e

    :goto_e
    const/4 v3, 0x0

    :goto_f
    return v3

    :cond_1e
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzn:J

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqq;->zzg(J)J

    move-result-wide v6

    const/4 v8, 0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 52
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzn:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzon;->zzg:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzn:J

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzqq;->zzp:I

    return v4
.end method

.method private final zzg(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzm:J

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzon;->zzd:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zznv;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/high16 v1, 0x20000

    goto :goto_0

    :cond_0
    const v1, 0x8000

    .line 1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-nez v8, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzf:Lcom/google/android/gms/internal/ads/zzol;

    .line 2
    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/internal/ads/zzol;->zza(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzl:Lcom/google/android/gms/internal/ads/zzaiv;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqq;->zze:Lcom/google/android/gms/internal/ads/zzoj;

    .line 3
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzoj;->zza(Lcom/google/android/gms/internal/ads/zzaiv;)Z

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzm()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez p2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zznp;

    .line 4
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqq;->zzi(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-lez v4, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 17
    :cond_5
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    if-eqz v2, :cond_6

    int-to-long v9, v2

    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzqq;->zzk(IJ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 8
    :cond_6
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzoo;->zzh(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_b

    :cond_7
    add-int/lit8 v2, v5, 0x1

    if-ne v5, v1, :cond_9

    if-eqz p2, :cond_8

    return v7

    :cond_8
    const-string p1, "Searched too many bytes."

    .line 15
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zznp;

    add-int v5, v3, v2

    .line 11
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    goto :goto_3

    :cond_a
    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zznp;

    .line 9
    invoke-virtual {v4, v0, v7}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    :goto_3
    move v5, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    .line 12
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzon;->zza(I)Z

    move v2, v8

    goto :goto_6

    :cond_c
    const/4 v8, 0x4

    if-ne v4, v8, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    add-int/2addr v3, v5

    .line 16
    invoke-virtual {p1, v3, v7}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    goto :goto_5

    .line 17
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    .line 16
    :goto_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzk:I

    return v0

    .line 12
    :cond_e
    :goto_6
    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zznp;

    add-int/lit8 v9, v9, -0x4

    .line 13
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    goto :goto_2
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqs;->zzc()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzm()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zznv;->zzh([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :catch_0
    return v1
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zznv;Z)Lcom/google/android/gms/internal/ads/zzqs;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, p2, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzon;->zza(I)Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzql;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:Lcom/google/android/gms/internal/ads/zzon;

    const/4 v7, 0x0

    move-object v1, p2

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzql;-><init>(JJLcom/google/android/gms/internal/ads/zzon;Z)V

    return-object p2
.end method

.method private static zzk(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(Lcom/google/android/gms/internal/ads/zznv;Z)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzh:Lcom/google/android/gms/internal/ads/zznx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzi:Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzh:Lcom/google/android/gms/internal/ads/zznx;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzi:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqq;->zzf(Lcom/google/android/gms/internal/ads/zznv;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 4
    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzqm;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzn:J

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzqq;->zzg(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzot;->zzg()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqm;

    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final zzd(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzk:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzm:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzn:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzp:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzqm;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqm;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzr:Z

    return-void
.end method
