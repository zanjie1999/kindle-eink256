.class public final Lcom/google/android/gms/internal/ads/zzrp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;
.implements Lcom/google/android/gms/internal/ads/zzot;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzf:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzqv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzrs;

.field private final zzh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaiu;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:I

.field private zzj:I

.field private zzk:J

.field private zzl:I

.field private zzm:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:Lcom/google/android/gms/internal/ads/zznx;

.field private zzs:[Lcom/google/android/gms/internal/ads/zzro;

.field private zzt:[[J

.field private zzu:I

.field private zzv:J

.field private zzw:I

.field private zzx:Lcom/google/android/gms/internal/ads/zzakn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzrn;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrp;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzrp;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzg:Lcom/google/android/gms/internal/ads/zzrs;

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzh:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0x10

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v0, 0x4

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzn:I

    return-void
.end method

.method private final zzh()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    return-void
.end method

.method private final zzi(J)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqv;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzqv;->zza:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqv;

    .line 3
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    const v4, 0x6d6f6f76

    if-ne v1, v4, :cond_17

    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzw:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    new-instance v13, Lcom/google/android/gms/internal/ads/zzoj;

    .line 5
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzoj;-><init>()V

    const v4, 0x75647461

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzre;->zzb(Lcom/google/android/gms/internal/ads/zzqw;)Landroid/util/Pair;

    move-result-object v4

    .line 8
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 9
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaiv;

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzoj;->zza(Lcom/google/android/gms/internal/ads/zzaiv;)Z

    :cond_1
    move-object v15, v4

    move-object/from16 v16, v5

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    const v4, 0x6d657461

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzre;->zzc(Lcom/google/android/gms/internal/ads/zzqv;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v4

    move-object v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v17, Lcom/google/android/gms/internal/ads/zzrm;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    move-object v4, v13

    move-object v14, v10

    move-object/from16 v10, v17

    .line 13
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzre;->zza(Lcom/google/android/gms/internal/ads/zzqv;Lcom/google/android/gms/internal/ads/zzoj;JLcom/google/android/gms/internal/ads/zzn;ZZLcom/google/android/gms/internal/ads/zzfln;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzr:Lcom/google/android/gms/internal/ads/zznx;

    if-eqz v4, :cond_16

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v11, v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_4
    const-wide/16 v18, 0x0

    if-ge v9, v5, :cond_10

    .line 15
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Lcom/google/android/gms/internal/ads/zzrx;

    .line 16
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzrx;->zzb:I

    if-nez v2, :cond_4

    move-object v7, v0

    move-object/from16 v23, v3

    move/from16 v24, v5

    const/4 v0, -0x1

    goto/16 :goto_b

    .line 17
    :cond_4
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzru;

    move-object/from16 v21, v1

    iget-wide v0, v2, Lcom/google/android/gms/internal/ads/zzru;->zze:J

    cmp-long v22, v0, v6

    if-eqz v22, :cond_5

    goto :goto_5

    .line 18
    :cond_5
    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/zzrx;->zzh:J

    .line 19
    :goto_5
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    new-instance v6, Lcom/google/android/gms/internal/ads/zzro;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    .line 20
    invoke-interface {v4, v9, v7}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v7

    invoke-direct {v6, v2, v8, v7}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzru;Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzox;)V

    .line 21
    iget v7, v8, Lcom/google/android/gms/internal/ads/zzrx;->zze:I

    move-object/from16 v23, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzafv;->zza()Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1e

    .line 23
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzO(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    move/from16 v24, v5

    const/4 v5, 0x2

    if-ne v7, v5, :cond_6

    cmp-long v5, v0, v18

    if-lez v5, :cond_6

    .line 24
    iget v5, v8, Lcom/google/android/gms/internal/ads/zzrx;->zzb:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_6

    int-to-float v5, v5

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    div-float/2addr v5, v0

    .line 25
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzU(F)Lcom/google/android/gms/internal/ads/zzaft;

    :cond_6
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    .line 26
    sget v1, Lcom/google/android/gms/internal/ads/zzrl;->zzb:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzoj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v13, Lcom/google/android/gms/internal/ads/zzoj;->zza:I

    .line 27
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzad(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v0, v13, Lcom/google/android/gms/internal/ads/zzoj;->zzb:I

    .line 28
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzae(I)Lcom/google/android/gms/internal/ads/zzaft;

    :cond_7
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    const/4 v1, 0x2

    new-array v5, v1, [Lcom/google/android/gms/internal/ads/zzaiv;

    const/4 v1, 0x0

    aput-object v15, v5, v1

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzh:Ljava/util/List;

    .line 29
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v1, 0x1

    const/4 v8, 0x0

    goto :goto_6

    .line 36
    :cond_8
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzh:Ljava/util/List;

    .line 29
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    const/4 v1, 0x1

    :goto_6
    aput-object v8, v5, v1

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    move-wide/from16 v25, v11

    const/4 v1, 0x0

    new-array v11, v1, [Lcom/google/android/gms/internal/ads/zzaiu;

    .line 30
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    if-eqz v16, :cond_b

    move-object/from16 v8, v16

    goto :goto_8

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    if-eqz v14, :cond_b

    const/4 v0, 0x0

    .line 31
    :goto_7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaiv;->zza()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 32
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzb(I)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v1

    .line 33
    instance-of v11, v1, Lcom/google/android/gms/internal/ads/zzakk;

    if-eqz v11, :cond_a

    .line 34
    check-cast v1, Lcom/google/android/gms/internal/ads/zzakk;

    .line 35
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzakk;->zza:Ljava/lang/String;

    const-string v12, "com.android.capture.fps"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    const/4 v0, 0x1

    new-array v11, v0, [Lcom/google/android/gms/internal/ads/zzaiu;

    const/4 v0, 0x0

    aput-object v1, v11, v0

    .line 36
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    goto :goto_8

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 37
    aget-object v1, v5, v0

    .line 38
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzaiv;->zzc(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 39
    :cond_c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaiv;->zza()I

    move-result v0

    if-lez v0, :cond_d

    .line 40
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzL(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzaft;

    :cond_d
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, -0x1

    if-ne v10, v0, :cond_f

    .line 42
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    move v10, v1

    goto :goto_a

    :cond_e
    const/4 v0, -0x1

    :cond_f
    :goto_a
    move-object/from16 v1, v21

    .line 43
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v11, v25

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object v0, v7

    move-object/from16 v3, v23

    move/from16 v5, v24

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    :cond_10
    move-object v7, v0

    const/4 v0, -0x1

    .line 18
    iput v10, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzu:I

    iput-wide v11, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzv:J

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzro;

    .line 44
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzro;

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzs:[Lcom/google/android/gms/internal/ads/zzro;

    .line 45
    array-length v2, v1

    new-array v3, v2, [[J

    new-array v5, v2, [I

    new-array v6, v2, [J

    new-array v2, v2, [Z

    const/4 v8, 0x0

    .line 46
    :goto_c
    array-length v9, v1

    if-ge v8, v9, :cond_11

    .line 47
    aget-object v9, v1, v8

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzrx;->zzb:I

    new-array v9, v9, [J

    aput-object v9, v3, v8

    .line 48
    aget-object v9, v1, v8

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzrx;->zzf:[J

    const/4 v10, 0x0

    aget-wide v11, v9, v10

    aput-wide v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_11
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 49
    :goto_d
    array-length v9, v1

    if-ge v8, v9, :cond_15

    const-wide v11, 0x7fffffffffffffffL

    const/4 v9, 0x0

    const/4 v13, -0x1

    .line 50
    :goto_e
    array-length v14, v1

    if-ge v9, v14, :cond_13

    .line 51
    aget-boolean v14, v2, v9

    if-nez v14, :cond_12

    aget-wide v14, v6, v9

    cmp-long v16, v14, v11

    if-gtz v16, :cond_12

    move v13, v9

    move-wide v11, v14

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 52
    :cond_13
    aget v9, v5, v13

    .line 53
    aget-object v11, v3, v13

    aput-wide v18, v11, v9

    .line 54
    aget-object v12, v1, v13

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v14, v12, Lcom/google/android/gms/internal/ads/zzrx;->zzd:[I

    aget v14, v14, v9

    int-to-long v14, v14

    add-long v18, v18, v14

    const/4 v14, 0x1

    add-int/2addr v9, v14

    .line 55
    aput v9, v5, v13

    .line 56
    array-length v11, v11

    if-ge v9, v11, :cond_14

    .line 57
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzrx;->zzf:[J

    aget-wide v15, v11, v9

    aput-wide v15, v6, v13

    goto :goto_d

    .line 58
    :cond_14
    aput-boolean v14, v2, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_15
    iput-object v3, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzt:[[J

    .line 59
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    .line 60
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    goto :goto_f

    :cond_16
    move-object v7, v0

    const/4 v0, 0x0

    .line 65
    throw v0

    :cond_17
    move-object v7, v0

    .line 61
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzqv;->zzb(Lcom/google/android/gms/internal/ads/zzqv;)V

    :cond_18
    :goto_f
    move-object v0, v7

    goto/16 :goto_0

    :cond_19
    move-object v7, v0

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrp;->zzh()V

    :cond_1a
    return-void
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzrx;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrp;->zzk(Lcom/google/android/gms/internal/ads/zzrx;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzc:[J

    aget-wide p1, p0, p1

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzrx;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrx;->zza(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrx;->zzb(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static zzl(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

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

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzrt;->zzb(Lcom/google/android/gms/internal/ads/zznv;Z)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzr:Lcom/google/android/gms/internal/ads/zznx;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 36
    :cond_0
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    const v5, 0x66747970

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v3, :cond_1d

    const-wide/32 v13, 0x40000

    if-eq v3, v10, :cond_15

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v16

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzn:I

    if-ne v3, v8, :cond_b

    const-wide v18, 0x7fffffffffffffffL

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    move-wide/from16 v25, v22

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x1

    const/16 v24, 0x1

    const/16 v27, -0x1

    :goto_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzs:[Lcom/google/android/gms/internal/ads/zzro;

    .line 37
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzamq;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/gms/internal/ads/zzro;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzs:[Lcom/google/android/gms/internal/ads/zzro;

    .line 38
    aget-object v4, v4, v3

    .line 39
    iget v15, v4, Lcom/google/android/gms/internal/ads/zzro;->zzd:I

    .line 40
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzrx;->zzb:I

    if-ne v15, v12, :cond_1

    goto :goto_6

    .line 41
    :cond_1
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzrx;->zzc:[J

    aget-wide v28, v4, v15

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzt:[[J

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzamq;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    check-cast v4, [[J

    aget-object v4, v4, v3

    aget-wide v30, v4, v15

    sub-long v28, v28, v16

    cmp-long v4, v28, v6

    if-ltz v4, :cond_3

    cmp-long v4, v28, v13

    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_4

    if-nez v24, :cond_5

    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    move/from16 v12, v24

    :goto_4
    if-ne v4, v12, :cond_6

    cmp-long v15, v28, v22

    if-gez v15, :cond_6

    :cond_5
    move v5, v3

    move/from16 v24, v4

    move-wide/from16 v22, v28

    move-wide/from16 v25, v30

    goto :goto_5

    :cond_6
    move/from16 v24, v12

    :goto_5
    cmp-long v12, v30, v20

    if-gez v12, :cond_7

    move/from16 v27, v3

    move v9, v4

    move-wide/from16 v20, v30

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    cmp-long v3, v20, v18

    if-eqz v3, :cond_a

    if-eqz v9, :cond_a

    const-wide/32 v3, 0xa00000

    add-long v20, v20, v3

    cmp-long v3, v25, v20

    if-gez v3, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v5, v27

    :cond_a
    :goto_7
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzn:I

    if-ne v5, v8, :cond_b

    goto/16 :goto_c

    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzs:[Lcom/google/android/gms/internal/ads/zzro;

    .line 43
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [Lcom/google/android/gms/internal/ads/zzro;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzn:I

    aget-object v3, v3, v4

    .line 44
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzox;

    .line 45
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzro;->zzd:I

    .line 46
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v12, v9, Lcom/google/android/gms/internal/ads/zzrx;->zzc:[J

    aget-wide v11, v12, v5

    .line 47
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzrx;->zzd:[I

    aget v9, v9, v5

    sub-long v16, v11, v16

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    move/from16 v19, v9

    int-to-long v8, v15

    add-long v16, v16, v8

    cmp-long v8, v16, v6

    if-ltz v8, :cond_14

    cmp-long v6, v16, v13

    if-ltz v6, :cond_c

    goto/16 :goto_b

    .line 48
    :cond_c
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzru;->zzg:I

    if-ne v2, v10, :cond_d

    const-wide/16 v6, 0x8

    add-long v16, v16, v6

    add-int/lit8 v9, v19, -0x8

    move-wide/from16 v6, v16

    goto :goto_8

    :cond_d
    move-wide/from16 v6, v16

    move/from16 v9, v19

    :goto_8
    long-to-int v2, v6

    .line 49
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zznv;->zze(I)V

    .line 50
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzru;->zzj:I

    if-eqz v6, :cond_10

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    const/4 v6, 0x0

    .line 51
    aput-byte v6, v2, v6

    .line 52
    aput-byte v6, v2, v10

    const/4 v7, 0x2

    .line 53
    aput-byte v6, v2, v7

    .line 54
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzro;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzru;->zzj:I

    const/4 v7, 0x4

    rsub-int/lit8 v8, v6, 0x4

    :goto_9
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    if-ge v7, v9, :cond_13

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzq:I

    if-nez v7, :cond_f

    .line 55
    invoke-interface {v1, v2, v8, v6}, Lcom/google/android/gms/internal/ads/zznv;->zzb([BII)V

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v11, 0x0

    .line 56
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 57
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    if-ltz v7, :cond_e

    .line 61
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzq:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 58
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v12, 0x4

    .line 59
    invoke-static {v4, v7, v12}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    add-int/2addr v7, v12

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    add-int/2addr v9, v8

    goto :goto_9

    :cond_e
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 61
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v11, 0x0

    .line 60
    invoke-static {v4, v1, v7, v11}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result v7

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    add-int/2addr v11, v7

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    add-int/2addr v11, v7

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzq:I

    sub-int/2addr v11, v7

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzq:I

    goto :goto_9

    .line 67
    :cond_10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 62
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    if-nez v2, :cond_11

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 63
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zznd;->zzb(ILcom/google/android/gms/internal/ads/zzamf;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v6, 0x7

    .line 64
    invoke-static {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    :cond_11
    add-int/lit8 v9, v9, 0x7

    :cond_12
    :goto_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    if-ge v2, v9, :cond_13

    sub-int v2, v9, v2

    const/4 v6, 0x0

    .line 65
    invoke-static {v4, v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result v2

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzq:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzq:I

    goto :goto_a

    :cond_13
    move/from16 v22, v9

    .line 66
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrx;->zzf:[J

    aget-wide v19, v2, v5

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrx;->zzg:[I

    aget v21, v1, v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    .line 67
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzro;->zzd:I

    add-int/2addr v1, v10

    iput v1, v3, Lcom/google/android/gms/internal/ads/zzro;->zzd:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzn:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzq:I

    const/4 v8, 0x0

    goto :goto_c

    .line 47
    :cond_14
    :goto_b
    iput-wide v11, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:J

    const/4 v8, 0x1

    :goto_c
    return v8

    .line 65
    :cond_15
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 25
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v6

    add-long/2addr v6, v3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzm:Lcom/google/android/gms/internal/ads/zzamf;

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v11

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    long-to-int v4, v3

    .line 26
    invoke-interface {v1, v11, v12, v4}, Lcom/google/android/gms/internal/ads/zznv;->zzb([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:I

    if-ne v3, v5, :cond_19

    .line 27
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 28
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzrp;->zzl(I)I

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_d

    :cond_16
    const/4 v3, 0x4

    .line 29
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    if-lez v3, :cond_18

    .line 30
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzrp;->zzl(I)I

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    .line 28
    :goto_d
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzw:I

    goto :goto_e

    .line 30
    :cond_19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqv;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzqw;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:I

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(ILcom/google/android/gms/internal/ads/zzamf;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zza(Lcom/google/android/gms/internal/ads/zzqw;)V

    goto :goto_e

    :cond_1a
    cmp-long v5, v3, v13

    if-gez v5, :cond_1c

    long-to-int v4, v3

    .line 33
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zznv;->zze(I)V

    :cond_1b
    :goto_e
    const/4 v11, 0x0

    goto :goto_f

    .line 34
    :cond_1c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:J

    const/4 v11, 0x1

    .line 35
    :goto_f
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzrp;->zzi(J)V

    if-eqz v11, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    return v10

    .line 34
    :cond_1d
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    if-nez v3, :cond_1f

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    const/4 v4, 0x0

    .line 1
    invoke-interface {v1, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zznv;->zza([BIIZ)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, -0x1

    return v3

    :cond_1e
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:I

    :cond_1f
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    const-wide/16 v11, 0x1

    cmp-long v8, v3, v11

    if-nez v8, :cond_20

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    .line 5
    invoke-interface {v1, v3, v9, v9}, Lcom/google/android/gms/internal/ads/zznv;->zzb([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    goto :goto_10

    :cond_20
    cmp-long v8, v3, v6

    if-nez v8, :cond_22

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_21

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzqv;

    if-eqz v8, :cond_21

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zzqv;->zza:J

    :cond_21
    cmp-long v8, v3, v6

    if-eqz v8, :cond_22

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v6

    sub-long/2addr v3, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    .line 6
    :cond_22
    :goto_10
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    int-to-long v7, v6

    cmp-long v11, v3, v7

    if-ltz v11, :cond_2c

    .line 68
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:I

    const v4, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v3, v4, :cond_29

    const v4, 0x7472616b

    if-eq v3, v4, :cond_29

    const v4, 0x6d646961

    if-eq v3, v4, :cond_29

    const v4, 0x6d696e66

    if-eq v3, v4, :cond_29

    const v4, 0x7374626c

    if-eq v3, v4, :cond_29

    const v4, 0x65647473

    if-eq v3, v4, :cond_29

    if-ne v3, v7, :cond_23

    goto/16 :goto_14

    :cond_23
    const v4, 0x6d646864

    if-eq v3, v4, :cond_26

    const v4, 0x6d766864

    if-eq v3, v4, :cond_26

    const v4, 0x68646c72    # 4.3148E24f

    if-eq v3, v4, :cond_26

    const v4, 0x73747364

    if-eq v3, v4, :cond_26

    const v4, 0x73747473

    if-eq v3, v4, :cond_26

    const v4, 0x73747373

    if-eq v3, v4, :cond_26

    const v4, 0x63747473

    if-eq v3, v4, :cond_26

    const v4, 0x656c7374

    if-eq v3, v4, :cond_26

    const v4, 0x73747363

    if-eq v3, v4, :cond_26

    const v4, 0x7374737a

    if-eq v3, v4, :cond_26

    const v4, 0x73747a32

    if-eq v3, v4, :cond_26

    const v4, 0x7374636f

    if-eq v3, v4, :cond_26

    const v4, 0x636f3634

    if-eq v3, v4, :cond_26

    const v4, 0x746b6864

    if-eq v3, v4, :cond_26

    if-eq v3, v5, :cond_26

    const v4, 0x75647461

    if-eq v3, v4, :cond_26

    const v4, 0x6b657973

    if-eq v3, v4, :cond_26

    const v4, 0x696c7374

    if-ne v3, v4, :cond_24

    goto :goto_11

    .line 23
    :cond_24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    int-to-long v5, v5

    sub-long v14, v3, v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_25

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakn;

    const-wide/16 v12, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    add-long v18, v14, v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    sub-long v20, v7, v5

    move-object v11, v3

    .line 24
    invoke-direct/range {v11 .. v21}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzx:Lcom/google/android/gms/internal/ads/zzakn;

    :cond_25
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzm:Lcom/google/android/gms/internal/ads/zzamf;

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    goto/16 :goto_0

    :cond_26
    :goto_11
    if-ne v6, v9, :cond_27

    const/4 v3, 0x1

    goto :goto_12

    :cond_27
    const/4 v3, 0x0

    .line 19
    :goto_12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_28

    const/4 v3, 0x1

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    .line 20
    :goto_13
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamf;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    long-to-int v5, v4

    .line 21
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzrp;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 22
    invoke-static {v4, v6, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzm:Lcom/google/android/gms/internal/ads/zzamf;

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzi:I

    goto/16 :goto_0

    .line 10
    :cond_29
    :goto_14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    int-to-long v10, v8

    add-long/2addr v3, v5

    sub-long/2addr v3, v10

    cmp-long v8, v5, v10

    if-eqz v8, :cond_2a

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:I

    if-ne v5, v7, :cond_2a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 11
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 12
    invoke-interface {v1, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zznv;->zzi([BII)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzre;->zzd(Lcom/google/android/gms/internal/ads/zzamf;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v5

    .line 14
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zznv;->zze(I)V

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    :cond_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzqv;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzj:I

    .line 16
    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzqv;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzk:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2b

    .line 17
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzrp;->zzi(J)V

    goto/16 :goto_0

    .line 18
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrp;->zzh()V

    goto/16 :goto_0

    :cond_2c
    const-string v1, "Atom size less than header length (unsupported)."

    .line 68
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1
.end method

.method public final zzd(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzl:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzq:I

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrp;->zzh()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzs:[Lcom/google/android/gms/internal/ads/zzro;

    if-eqz p1, :cond_2

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 3
    aget-object v2, p1, v0

    .line 4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    .line 5
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzrx;->zza(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 6
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzrx;->zzb(J)I

    move-result v4

    .line 7
    :cond_1
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzro;->zzd:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/ads/zzor;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzs:[Lcom/google/android/gms/internal/ads/zzro;

    if-eqz v0, :cond_8

    .line 2
    array-length v1, v0

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzor;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzou;->zza:Lcom/google/android/gms/internal/ads/zzou;

    .line 3
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzu:I

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_3

    .line 4
    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrp;->zzk(Lcom/google/android/gms/internal/ads/zzrx;J)I

    move-result v1

    if-ne v1, v2, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzor;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzou;->zza:Lcom/google/android/gms/internal/ads/zzou;

    .line 6
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object p1

    .line 7
    :cond_1
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzf:[J

    aget-wide v8, v7, v1

    .line 8
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzc:[J

    aget-wide v10, v7, v1

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 9
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzb:I

    add-int/2addr v7, v2

    if-ge v1, v7, :cond_2

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrx;->zzb(J)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 11
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzf:[J

    aget-wide v1, p2, p1

    .line 12
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzc:[J

    aget-wide p1, p2, p1

    move-wide v3, p1

    goto :goto_0

    :cond_2
    move-wide v1, v5

    :goto_0
    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzs:[Lcom/google/android/gms/internal/ads/zzro;

    .line 13
    array-length v8, v7

    if-ge v0, v8, :cond_6

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzu:I

    if-eq v0, v8, :cond_5

    .line 14
    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzro;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    .line 15
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzrp;->zzj(Lcom/google/android/gms/internal/ads/zzrx;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    .line 16
    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzrp;->zzj(Lcom/google/android/gms/internal/ads/zzrx;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzou;

    .line 17
    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzor;

    .line 18
    invoke-direct {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzou;

    .line 19
    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzor;

    .line 20
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object p2

    :cond_8
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzv:J

    return-wide v0
.end method
