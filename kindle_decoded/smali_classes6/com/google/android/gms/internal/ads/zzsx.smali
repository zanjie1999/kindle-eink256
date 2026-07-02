.class public final Lcom/google/android/gms/internal/ads/zzsx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzame;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzox;

.field private zzh:Lcom/google/android/gms/internal/ads/zzox;

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:Z

.field private zzm:Z

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:Z

.field private zzr:J

.field private zzs:I

.field private zzt:J

.field private zzu:Lcom/google/android/gms/internal/ads/zzox;

.field private zzv:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsx;->zza:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzame;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsx;->zza:[B

    const/16 v2, 0xa

    .line 2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsx;->zzi()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzo:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzr:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzt:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzb:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsx;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zzf(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzg()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzm:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsx;->zzi()V

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    .line 2
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzi()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzk:I

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzox;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzi:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzu:Lcom/google/android/gms/internal/ads/zzox;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzv:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzs:I

    return-void
.end method

.method private final zzk()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzi:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    return-void
.end method

.method private static final zzl(BB)Z
    .locals 0

    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzsx;->zzf(I)Z

    move-result p0

    return p0
.end method

.method private static final zzm(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzt:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsx;->zzg()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzg:Lcom/google/android/gms/internal/ads/zzox;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzu:Lcom/google/android/gms/internal/ads/zzox;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzb:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzh:Lcom/google/android/gms/internal/ads/zzox;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string p2, "application/id3"

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zznt;

    .line 10
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zznt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzh:Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzt:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzg:Lcom/google/android/gms/internal/ads/zzox;

    if-eqz v0, :cond_1c

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    if-lez v0, :cond_1b

    iget v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzi:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v10, :cond_8

    const/16 v5, 0xa

    if-eq v0, v9, :cond_7

    if-eq v0, v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzs:I

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    sub-int/2addr v1, v2

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzu:Lcom/google/android/gms/internal/ads/zzox;

    .line 29
    invoke-interface {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzox;->zzy(Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    iget v12, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzs:I

    if-ne v1, v12, :cond_0

    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzt:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v0

    if-eqz v2, :cond_1

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzu:Lcom/google/android/gms/internal/ads/zzox;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 30
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzt:J

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzv:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzt:J

    .line 31
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsx;->zzi()V

    goto :goto_0

    .line 60
    :cond_2
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzl:Z

    const/4 v11, 0x5

    if-eq v10, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    :goto_1
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    .line 32
    invoke-direct {v6, v7, v12, v0}, Lcom/google/android/gms/internal/ads/zzsx;->zzh(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 33
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzq:Z

    if-nez v0, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 34
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v0

    add-int/2addr v0, v10

    if-eq v0, v9, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v12, 0x3d

    .line 35
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Detected audio object type: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AdtsReader"

    .line 36
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 37
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 38
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v0

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzo:I

    .line 39
    sget v11, Lcom/google/android/gms/internal/ads/zzmx;->zza:I

    new-array v9, v9, [B

    shr-int/lit8 v11, v5, 0x1

    and-int/2addr v11, v2

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v8

    shl-int/lit8 v2, v5, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v9, v10

    .line 40
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzmx;->zza([B)Lcom/google/android/gms/internal/ads/zzmv;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaft;

    .line 41
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzf:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v4, "audio/mp4a-latm"

    .line 43
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmv;->zzc:Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzmv;->zzb:I

    .line 45
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzmv;->zza:I

    .line 46
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 47
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zze:Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v8, v2

    .line 50
    div-long/2addr v4, v8

    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzr:J

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzg:Lcom/google/android/gms/internal/ads/zzox;

    .line 51
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzq:Z

    goto :goto_2

    .line 55
    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 52
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 51
    :goto_2
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 53
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzl:Z

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, -0x2

    :cond_6
    move v5, v0

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzg:Lcom/google/android/gms/internal/ads/zzox;

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzr:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzsx;->zzj(Lcom/google/android/gms/internal/ads/zzox;JII)V

    goto/16 :goto_0

    .line 26
    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    .line 56
    invoke-direct {v6, v7, v0, v5}, Lcom/google/android/gms/internal/ads/zzsx;->zzh(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzh:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 57
    invoke-interface {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzox;->zzy(Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v1, 0x6

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzh:Lcom/google/android/gms/internal/ads/zzox;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzA()I

    move-result v0

    add-int/2addr v5, v0

    move-object/from16 v0, p0

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzsx;->zzj(Lcom/google/android/gms/internal/ads/zzox;JII)V

    goto/16 :goto_0

    .line 22
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v2

    .line 23
    aget-byte v1, v1, v2

    aput-byte v1, v0, v8

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 24
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzo:I

    if-eq v1, v5, :cond_9

    if-eq v0, v1, :cond_9

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsx;->zzg()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzm:Z

    if-nez v1, :cond_a

    iput-boolean v10, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzm:Z

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzp:I

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzn:I

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzo:I

    .line 26
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsx;->zzk()V

    goto/16 :goto_0

    .line 31
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v12

    :goto_3
    if-ge v11, v12, :cond_1a

    add-int/lit8 v13, v11, 0x1

    .line 2
    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzk:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_14

    int-to-byte v14, v11

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/ads/zzsx;->zzl(BB)Z

    move-result v14

    if-eqz v14, :cond_14

    iget-boolean v14, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzm:Z

    if-nez v14, :cond_11

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 3
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    .line 4
    invoke-static {v7, v15, v10}, Lcom/google/android/gms/internal/ads/zzsx;->zzm(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v15

    if-nez v15, :cond_c

    goto/16 :goto_7

    .line 21
    :cond_c
    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 5
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 6
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v15

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzn:I

    if-eq v8, v5, :cond_d

    if-ne v15, v8, :cond_14

    :cond_d
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzo:I

    if-eq v8, v5, :cond_f

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    .line 7
    invoke-static {v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzsx;->zzm(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_4

    .line 18
    :cond_e
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 8
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 9
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v8

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzo:I

    if-ne v8, v9, :cond_14

    add-int/lit8 v8, v14, 0x2

    .line 10
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    :cond_f
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    .line 11
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzsx;->zzm(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v9, 0xe

    .line 12
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 13
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v8

    if-lt v8, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v1

    add-int/2addr v14, v8

    if-ge v14, v1, :cond_11

    .line 14
    aget-byte v8, v9, v14

    if-ne v8, v5, :cond_10

    add-int/lit8 v14, v14, 0x1

    if-eq v14, v1, :cond_11

    .line 15
    aget-byte v1, v9, v14

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzsx;->zzl(BB)Z

    move-result v1

    if-eqz v1, :cond_14

    aget-byte v1, v9, v14

    and-int/lit8 v1, v1, 0x8

    shr-int/2addr v1, v4

    if-ne v1, v15, :cond_14

    goto :goto_4

    :cond_10
    const/16 v15, 0x49

    if-ne v8, v15, :cond_14

    add-int/lit8 v8, v14, 0x1

    if-eq v8, v1, :cond_11

    .line 16
    aget-byte v8, v9, v8

    const/16 v15, 0x44

    if-ne v8, v15, :cond_14

    add-int/lit8 v14, v14, 0x2

    if-eq v14, v1, :cond_11

    .line 17
    aget-byte v1, v9, v14

    const/16 v8, 0x33

    if-ne v1, v8, :cond_14

    :cond_11
    :goto_4
    and-int/lit8 v0, v11, 0x8

    shr-int/2addr v0, v4

    .line 7
    iput v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzp:I

    and-int/lit8 v0, v11, 0x1

    xor-int/2addr v0, v10

    if-eq v10, v0, :cond_12

    const/4 v0, 0x0

    goto :goto_5

    :cond_12
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzl:Z

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzm:Z

    if-nez v0, :cond_13

    iput v10, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzi:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    goto :goto_6

    .line 18
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsx;->zzk()V

    .line 19
    :goto_6
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto/16 :goto_0

    .line 4
    :cond_14
    :goto_7
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzk:I

    or-int v8, v1, v11

    const/16 v9, 0x149

    if-eq v8, v9, :cond_19

    const/16 v9, 0x1ff

    if-eq v8, v9, :cond_18

    const/16 v9, 0x344

    if-eq v8, v9, :cond_17

    const/16 v9, 0x433

    if-eq v8, v9, :cond_16

    const/16 v8, 0x100

    if-eq v1, v8, :cond_15

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzk:I

    add-int/lit8 v11, v13, -0x1

    const/16 v1, 0xd

    const/4 v8, 0x0

    goto :goto_a

    :cond_15
    const/4 v1, 0x2

    const/4 v8, 0x0

    goto :goto_9

    :cond_16
    const/4 v1, 0x2

    iput v1, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzi:I

    iput v4, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzj:I

    const/4 v8, 0x0

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzs:I

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 20
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 21
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto/16 :goto_0

    :cond_17
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x400

    goto :goto_8

    :cond_18
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x200

    goto :goto_8

    :cond_19
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x300

    :goto_8
    iput v9, v6, Lcom/google/android/gms/internal/ads/zzsx;->zzk:I

    :goto_9
    move v11, v13

    const/16 v1, 0xd

    :goto_a
    const/4 v9, 0x2

    goto/16 :goto_3

    .line 22
    :cond_1a
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto/16 :goto_0

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    .line 61
    throw v0
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
