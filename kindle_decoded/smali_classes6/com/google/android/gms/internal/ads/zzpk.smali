.class public final Lcom/google/android/gms/internal/ads/zzpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzob;

.field private zze:Lcom/google/android/gms/internal/ads/zznx;

.field private zzf:Lcom/google/android/gms/internal/ads/zzox;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/zzaiv;

.field private zzi:Lcom/google/android/gms/internal/ads/zzoh;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzpi;

.field private zzm:I

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpj;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpk;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzb:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzob;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzob;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzamf;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzk:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzoc;->zza(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzoh;ILcom/google/android/gms/internal/ads/zzob;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzob;->zza:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzj:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    .line 5
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zza(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzoh;ILcom/google/android/gms/internal/ads/zzob;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzob;->zza:J

    return-wide p1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_4

    .line 8
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_6
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method private final zzf()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzoh;->zze:I

    const-wide/32 v3, 0xf4240

    mul-long v0, v0, v3

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzoe;->zza(Lcom/google/android/gms/internal/ads/zznv;Z)Lcom/google/android/gms/internal/ads/zzaiv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x4

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 3
    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zze:Lcom/google/android/gms/internal/ads/zznx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 78
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    const/4 v5, 0x2

    if-eq v2, v3, :cond_1a

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eq v2, v5, :cond_18

    if-eq v2, v6, :cond_10

    const-wide/16 v9, -0x1

    if-eq v2, v8, :cond_b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zznl;->zzc()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zznl;->zzd(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I

    move-result v4

    goto/16 :goto_2

    :cond_0
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    cmp-long v2, v6, v9

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    .line 66
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zzb(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoh;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v2

    const v6, 0x8000

    if-ge v2, v6, :cond_4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    sub-int/2addr v6, v2

    .line 67
    invoke-interface {v1, v7, v2, v6}, Lcom/google/android/gms/internal/ads/zznv;->zzg([BII)I

    move-result v1

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    add-int/2addr v2, v1

    .line 68
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    goto :goto_1

    .line 76
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    if-nez v1, :cond_5

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpk;->zzf()V

    const/4 v4, -0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 68
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzj:I

    if-ge v2, v5, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    sub-int/2addr v5, v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v2

    .line 69
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 70
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zze(Lcom/google/android/gms/internal/ads/zzamf;Z)J

    move-result-wide v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v5

    sub-int/2addr v5, v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 71
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 72
    invoke-static {v1, v6, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    cmp-long v1, v2, v9

    if-eqz v1, :cond_7

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpk;->zzf()V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_8

    :goto_2
    return v4

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v5

    .line 74
    invoke-static {v2, v3, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 75
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 76
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    return v4

    .line 79
    :cond_9
    throw v7

    .line 80
    :cond_a
    throw v7

    .line 51
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    .line 52
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zznp;

    .line 53
    invoke-virtual {v6, v3, v4, v5, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_f

    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzk:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zze:Lcom/google/android/gms/internal/ads/zznx;

    .line 58
    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v16

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v12, :cond_e

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzoh;->zzk:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v1, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzof;

    .line 59
    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzof;-><init>(Lcom/google/android/gms/internal/ads/zzoh;J)V

    goto :goto_3

    :cond_c
    const-wide/16 v5, 0x0

    cmp-long v1, v16, v9

    if-eqz v1, :cond_d

    .line 64
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzoh;->zzj:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzpi;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzk:I

    move-object v11, v1

    .line 62
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(Lcom/google/android/gms/internal/ads/zzoh;IJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zznl;->zza()Lcom/google/android/gms/internal/ads/zzot;

    move-result-object v1

    goto :goto_3

    .line 79
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    .line 60
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzoh;->zza()J

    move-result-wide v7

    .line 61
    invoke-direct {v1, v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    .line 64
    :goto_3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v4

    .line 65
    :cond_e
    throw v7

    .line 55
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    const-string v1, "First frame does not start with sync code."

    .line 56
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 9
    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/ads/zzod;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    .line 10
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzod;-><init>(Lcom/google/android/gms/internal/ads/zzoh;)V

    .line 11
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzame;

    new-array v5, v8, [B

    .line 12
    invoke-direct {v3, v5, v8}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/zznp;

    .line 13
    invoke-virtual {v9, v5, v4, v8, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v5

    const/4 v10, 0x7

    .line 15
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v10

    const/16 v11, 0x18

    .line 16
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v11, 0x6

    if-nez v10, :cond_12

    const/16 v3, 0x26

    new-array v10, v3, [B

    .line 17
    invoke-virtual {v9, v10, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    new-instance v3, Lcom/google/android/gms/internal/ads/zzoh;

    .line 18
    invoke-direct {v3, v10, v8}, Lcom/google/android/gms/internal/ads/zzoh;-><init>([BI)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    goto/16 :goto_4

    .line 49
    :cond_12
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v12, :cond_17

    if-ne v10, v6, :cond_13

    .line 47
    new-instance v10, Lcom/google/android/gms/internal/ads/zzamf;

    .line 19
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v13

    .line 20
    invoke-virtual {v9, v13, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    .line 21
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzoe;->zzb(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzoh;->zze(Lcom/google/android/gms/internal/ads/zzog;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    goto/16 :goto_4

    :cond_13
    if-ne v10, v8, :cond_14

    new-instance v10, Lcom/google/android/gms/internal/ads/zzamf;

    .line 22
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v13

    .line 23
    invoke-virtual {v9, v13, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    .line 24
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 25
    invoke-static {v10, v4, v4}, Lcom/google/android/gms/internal/ads/zzpc;->zzb(Lcom/google/android/gms/internal/ads/zzamf;ZZ)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzoz;->zzb:[Ljava/lang/String;

    .line 26
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 27
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzoh;->zzf(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    goto :goto_4

    :cond_14
    if-ne v10, v11, :cond_15

    new-instance v10, Lcom/google/android/gms/internal/ads/zzamf;

    .line 29
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v13

    .line 30
    invoke-virtual {v9, v13, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    .line 31
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 32
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    .line 33
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    .line 34
    sget-object v9, Lcom/google/android/gms/internal/ads/zzfll;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v3, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v16

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    sget-object v9, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    .line 36
    invoke-virtual {v10, v3, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v17

    .line 37
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v18

    .line 38
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v19

    .line 39
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v20

    .line 40
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v21

    .line 41
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    .line 42
    new-array v9, v3, [B

    .line 43
    invoke-virtual {v10, v9, v4, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajc;

    move-object v14, v3

    move-object/from16 v22, v9

    .line 44
    invoke-direct/range {v14 .. v22}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 45
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzoh;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    goto :goto_4

    .line 28
    :cond_15
    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 18
    :goto_4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    .line 46
    sget v9, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v5, :cond_11

    if-eqz v3, :cond_16

    .line 50
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzoh;->zzc:I

    .line 48
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzj:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzb:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzh:Lcom/google/android/gms/internal/ads/zzaiv;

    .line 49
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzoh;->zzc([BLcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v4

    .line 50
    :cond_16
    throw v7

    .line 49
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 47
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 5
    :cond_18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    .line 7
    invoke-virtual {v1, v3, v4, v8, v4}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v1

    const-wide/32 v8, 0x664c6143

    cmp-long v3, v1, v8

    if-nez v3, :cond_19

    .line 9
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v4

    :cond_19
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 3
    :cond_1a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzb:[B

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    const/16 v6, 0x2a

    .line 4
    invoke-virtual {v3, v2, v4, v6, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v4

    .line 1
    :cond_1b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzm()J

    move-result-wide v5

    .line 2
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzoe;->zza(Lcom/google/android/gms/internal/ads/zznv;Z)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzm()J

    move-result-wide v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    sub-long/2addr v7, v5

    long-to-int v5, v7

    .line 3
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzh:Lcom/google/android/gms/internal/ads/zzaiv;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v4
.end method

.method public final zzd(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zznl;->zzb(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 2
    :goto_1
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    return-void
.end method
