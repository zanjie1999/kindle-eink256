.class public final Lcom/google/android/gms/internal/ads/zzpe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[B

.field private static final zze:[B

.field private static final zzf:I


# instance fields
.field private final zzg:[B

.field private zzh:Z

.field private zzi:J

.field private zzj:I

.field private zzk:I

.field private zzl:Z

.field private zzm:I

.field private zzn:I

.field private zzo:J

.field private zzp:Lcom/google/android/gms/internal/ads/zznx;

.field private zzq:Lcom/google/android/gms/internal/ads/zzox;

.field private zzr:Lcom/google/android/gms/internal/ads/zzot;

.field private zzs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpd;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzpe;->zzb:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:[I

    const-string v0, "#!AMR\n"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzs(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:[B

    const-string v0, "#!AMR-WB\n"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzs(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zze:[B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Lcom/google/android/gms/internal/ads/zzpe;->zzf:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpe;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzg:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzm:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:[B

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzf(Lcom/google/android/gms/internal/ads/zznv;[B)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzh:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:[B

    .line 2
    array-length v0, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 3
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zze:[B

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzf(Lcom/google/android/gms/internal/ads/zznv;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzh:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zze:[B

    .line 5
    array-length v0, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 6
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    return v1

    :cond_1
    return v2
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zznv;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    .line 2
    array-length v0, p1

    new-array v1, v0, [B

    check-cast p0, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 4
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zznv;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzk:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_7

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzg:[B

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zznp;

    .line 2
    invoke-virtual {v4, v0, v3, v2, v3}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzg:[B

    aget-byte v0, v0, v3

    and-int/lit16 v4, v0, 0x83

    const/4 v5, 0x0

    if-gtz v4, :cond_6

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xf

    .line 3
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzh:Z

    if-eqz v4, :cond_0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    const/16 v6, 0xd

    if-le v0, v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_4

    const/16 v6, 0xc

    if-lt v0, v6, :cond_1

    const/16 v6, 0xe

    if-gt v0, v6, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzpe;->zzc:[I

    aget v0, v4, v0

    goto :goto_1

    .line 7
    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzpe;->zzb:[I

    aget v0, v4, v0

    .line 3
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzj:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzk:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzm:I

    if-ne v4, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzm:I

    move v4, v0

    :cond_3
    if-ne v4, v0, :cond_7

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzn:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzn:I

    goto :goto_3

    :cond_4
    :goto_2
    :try_start_1
    const-string p1, "WB"

    const-string v3, "NB"

    if-eq v2, v4, :cond_5

    move-object p1, v3

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal AMR "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " frame type "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 2
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    .line 3
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid padding bits for frame header "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v1

    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzq:Lcom/google/android/gms/internal/ads/zzox;

    .line 6
    invoke-static {v4, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result p1

    if-ne p1, v1, :cond_8

    return v1

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzk:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzk:I

    if-lez v0, :cond_9

    return v3

    :cond_9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzq:Lcom/google/android/gms/internal/ads/zzox;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzi:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzj:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 7
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzi:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzi:J

    return v3
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zze(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzp:Lcom/google/android/gms/internal/ads/zznx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzq:Lcom/google/android/gms/internal/ads/zzox;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzq:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zze(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Could not find AMR header."

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzs:Z

    const/4 v0, 0x1

    if-nez p2, :cond_4

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzs:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzh:Z

    if-eq v0, p2, :cond_2

    const-string v1, "audio/3gpp"

    goto :goto_1

    :cond_2
    const-string v1, "audio/amr-wb"

    :goto_1
    if-eq v0, p2, :cond_3

    const/16 p2, 0x1f40

    goto :goto_2

    :cond_3
    const/16 p2, 0x3e80

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzq:Lcom/google/android/gms/internal/ads/zzox;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaft;

    .line 4
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 5
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    sget v1, Lcom/google/android/gms/internal/ads/zzpe;->zzf:I

    .line 6
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzO(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 7
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 8
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p2

    .line 4
    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    .line 10
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzg(Lcom/google/android/gms/internal/ads/zznv;)I

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzl:Z

    if-eqz p2, :cond_5

    return p1

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzos;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    invoke-direct {p2, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzr:Lcom/google/android/gms/internal/ads/zzot;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzp:Lcom/google/android/gms/internal/ads/zznx;

    .line 12
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzl:Z

    return p1
.end method

.method public final zzd(JJ)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzi:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzj:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzk:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzo:J

    return-void
.end method
