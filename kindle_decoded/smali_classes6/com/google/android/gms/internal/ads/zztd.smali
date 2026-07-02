.class public final Lcom/google/android/gms/internal/ads/zztd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# static fields
.field private static final zzc:[D


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/gms/internal/ads/zzox;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzuq;

.field private final zze:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzf:Lcom/google/android/gms/internal/ads/zztq;

.field private final zzg:[Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zztc;

.field private zzi:J

.field private zzj:Z

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:Z

.field private zzq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zztd;->zzc:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zztd;-><init>(Lcom/google/android/gms/internal/ads/zzuq;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzuq;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztd;->zzd:Lcom/google/android/gms/internal/ads/zzuq;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzg:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zztc;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zztc;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzh:Lcom/google/android/gms/internal/ads/zztc;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 v0, 0xb2

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztd;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzo:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzg:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalw;->zze([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzh:Lcom/google/android/gms/internal/ads/zztc;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztc;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzi:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzj:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzo:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztd;->zzd:Lcom/google/android/gms/internal/ads/zzuq;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V

    :cond_0
    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztd;->zzm:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztd;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzi:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzi:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v5

    move-object/from16 v6, p1

    .line 2
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzg:[Z

    .line 3
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzalw;->zzd([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzk:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzh:Lcom/google/android/gms/internal/ads/zztc;

    .line 33
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zztc;->zzc([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v5, v4, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    .line 4
    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zztd;->zzk:Z

    if-nez v9, :cond_b

    if-lez v8, :cond_3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztd;->zzh:Lcom/google/android/gms/internal/ads/zztc;

    .line 5
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zztc;->zzc([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zztd;->zzh:Lcom/google/android/gms/internal/ads/zztc;

    .line 6
    invoke-virtual {v12, v7, v9}, Lcom/google/android/gms/internal/ads/zztc;->zzb(II)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztd;->zzh:Lcom/google/android/gms/internal/ads/zztc;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zztd;->zza:Ljava/lang/String;

    if-eqz v12, :cond_a

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zztc;->zzc:[B

    iget v14, v9, Lcom/google/android/gms/internal/ads/zztc;->zza:I

    .line 7
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v14, 0x4

    .line 8
    aget-byte v15, v13, v14

    const/16 v16, 0x5

    .line 9
    aget-byte v10, v13, v16

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v14

    shr-int/lit8 v17, v10, 0x4

    or-int v15, v15, v17

    and-int/lit8 v10, v10, 0xf

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    const/16 v18, 0x6

    .line 10
    aget-byte v11, v13, v18

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    const/4 v11, 0x7

    .line 11
    aget-byte v14, v13, v11

    and-int/lit16 v14, v14, 0xf0

    const/4 v11, 0x4

    shr-int/2addr v14, v11

    const/4 v11, 0x2

    if-eq v14, v11, :cond_7

    const/4 v11, 0x3

    if-eq v14, v11, :cond_6

    const/4 v11, 0x4

    if-eq v14, v11, :cond_5

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    mul-int/lit8 v11, v10, 0x79

    int-to-float v11, v11

    mul-int/lit8 v14, v15, 0x64

    goto :goto_2

    :cond_6
    mul-int/lit8 v11, v10, 0x10

    int-to-float v11, v11

    mul-int/lit8 v14, v15, 0x9

    goto :goto_2

    :cond_7
    mul-int/lit8 v11, v10, 0x4

    int-to-float v11, v11

    mul-int/lit8 v14, v15, 0x3

    :goto_2
    int-to-float v14, v14

    div-float/2addr v11, v14

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaft;

    .line 12
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 13
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v12, "video/mpeg2"

    .line 14
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 15
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzaft;->zzS(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 16
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzT(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 17
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzaft;->zzW(F)Lcom/google/android/gms/internal/ads/zzaft;

    .line 18
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 19
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v10

    const/4 v11, 0x7

    .line 20
    aget-byte v11, v13, v11

    and-int/lit8 v11, v11, 0xf

    add-int/lit8 v11, v11, -0x1

    const-wide/16 v14, 0x0

    if-ltz v11, :cond_9

    const/16 v12, 0x8

    if-ge v11, v12, :cond_9

    sget-object v12, Lcom/google/android/gms/internal/ads/zztd;->zzc:[D

    aget-wide v11, v12, v11

    iget v9, v9, Lcom/google/android/gms/internal/ads/zztc;->zzb:I

    add-int/lit8 v9, v9, 0x9

    .line 21
    aget-byte v9, v13, v9

    and-int/lit8 v13, v9, 0x60

    shr-int/lit8 v13, v13, 0x5

    and-int/lit8 v9, v9, 0x1f

    if-eq v13, v9, :cond_8

    int-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v15

    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v5

    int-to-double v5, v9

    div-double/2addr v13, v5

    mul-double v11, v11, v13

    goto :goto_4

    :cond_8
    move/from16 v16, v5

    :goto_4
    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v11

    double-to-long v14, v5

    goto :goto_5

    :cond_9
    move/from16 v16, v5

    .line 22
    :goto_5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zztd;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    .line 23
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzafv;

    invoke-interface {v6, v9}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    .line 24
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zztd;->zzl:J

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zztd;->zzk:Z

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 35
    throw v1

    :cond_b
    move/from16 v16, v5

    .line 24
    :goto_6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    const/16 v6, 0xb2

    if-eqz v5, :cond_f

    if-lez v8, :cond_c

    .line 25
    invoke-virtual {v5, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    neg-int v1, v8

    :goto_7
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    .line 26
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    .line 27
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zza([BI)I

    move-result v1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zztd;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    .line 28
    sget v8, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    invoke-virtual {v5, v8, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztd;->zzd:Lcom/google/android/gms/internal/ads/zzuq;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zztd;->zzo:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zztd;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    .line 29
    invoke-virtual {v1, v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzuq;->zzb(JLcom/google/android/gms/internal/ads/zzamf;)V

    :cond_d
    if-ne v7, v6, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v1

    add-int/lit8 v5, v4, 0x2

    .line 30
    aget-byte v1, v1, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztd;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    .line 31
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    :cond_e
    const/16 v7, 0xb2

    :cond_f
    if-eqz v7, :cond_11

    const/16 v1, 0xb3

    if-ne v7, v1, :cond_10

    goto :goto_8

    :cond_10
    const/16 v1, 0xb8

    if-ne v7, v1, :cond_18

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztd;->zzp:Z

    goto :goto_d

    :cond_11
    :goto_8
    sub-int v1, v2, v4

    .line 31
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzq:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_12

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzk:Z

    if-eqz v4, :cond_12

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zztd;->zzo:J

    cmp-long v4, v9, v5

    if-eqz v4, :cond_12

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zztd;->zzp:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zztd;->zzi:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zztd;->zzn:J

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zztd;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    sub-long/2addr v12, v14

    long-to-int v4, v12

    sub-int v12, v4, v1

    const/4 v14, 0x0

    move v13, v1

    .line 32
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    :cond_12
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzj:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzq:Z

    if-eqz v4, :cond_13

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_b

    :cond_14
    :goto_9
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zztd;->zzi:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zztd;->zzn:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zztd;->zzm:J

    cmp-long v1, v8, v5

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zztd;->zzo:J

    cmp-long v1, v8, v5

    if-eqz v1, :cond_16

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zztd;->zzl:J

    add-long/2addr v8, v10

    goto :goto_a

    :cond_16
    move-wide v8, v5

    :goto_a
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zztd;->zzo:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztd;->zzp:Z

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zztd;->zzm:J

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zztd;->zzj:Z

    :goto_b
    if-nez v7, :cond_17

    const/4 v10, 0x1

    goto :goto_c

    :cond_17
    const/4 v10, 0x0

    :goto_c
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zztd;->zzq:Z

    :cond_18
    :goto_d
    move-object/from16 v6, p1

    move/from16 v1, v16

    goto/16 :goto_0
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
