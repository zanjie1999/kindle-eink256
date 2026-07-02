.class public final Lcom/google/android/gms/internal/ads/zzpn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzpo;

.field private zzg:Lcom/google/android/gms/internal/ads/zznx;

.field private zzh:I

.field private zzi:Z

.field private zzj:J

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:J

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/internal/ads/zzpl;

.field private zzq:Lcom/google/android/gms/internal/ads/zzpr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpm;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpn;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0x9

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0xb

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpo;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzpo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzf:Lcom/google/android/gms/internal/ads/zzpo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzh:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zznv;)Lcom/google/android/gms/internal/ads/zzamf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzm:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzj()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzj()I

    move-result v1

    add-int/2addr v1, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzm:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzm:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzm:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 5
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zze:Lcom/google/android/gms/internal/ads/zzamf;

    return-object p1
.end method

.method private final zzf()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzg:Lcom/google/android/gms/internal/ads/zznx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzo:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v0

    const v3, 0x464c56

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v1, v0, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    const/4 v3, 0x4

    .line 7
    invoke-virtual {v1, v0, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v0

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object p1

    .line 12
    invoke-virtual {v1, p1, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 13
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzg:Lcom/google/android/gms/internal/ads/zznx;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzg:Lcom/google/android/gms/internal/ads/zznx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzh:I

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_e

    const/4 v10, 0x3

    if-eq v2, v6, :cond_d

    if-eq v2, v10, :cond_b

    if-ne v2, v7, :cond_a

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzi:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzj:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzn:J

    add-long/2addr v2, v14

    goto :goto_1

    .line 21
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzf:Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpo;->zzc()J

    move-result-wide v2

    cmp-long v14, v2, v12

    if-nez v14, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzn:J

    .line 1
    :goto_1
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzl:I

    if-ne v14, v4, :cond_4

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    if-eqz v14, :cond_5

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpn;->zzf()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    .line 26
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzpn;->zze(Lcom/google/android/gms/internal/ads/zznv;)Lcom/google/android/gms/internal/ads/zzamf;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;->zzf(Lcom/google/android/gms/internal/ads/zzamf;J)Z

    move-result v2

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v4, v14

    :cond_5
    if-ne v4, v5, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzq:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v4, :cond_7

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpn;->zzf()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzq:Lcom/google/android/gms/internal/ads/zzpr;

    .line 24
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzpn;->zze(Lcom/google/android/gms/internal/ads/zznv;)Lcom/google/android/gms/internal/ads/zzamf;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;->zzf(Lcom/google/android/gms/internal/ads/zzamf;J)Z

    move-result v2

    goto :goto_2

    :cond_6
    const/16 v5, 0x12

    if-ne v4, v5, :cond_7

    .line 22
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzo:Z

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzf:Lcom/google/android/gms/internal/ads/zzpo;

    .line 19
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzpn;->zze(Lcom/google/android/gms/internal/ads/zznv;)Lcom/google/android/gms/internal/ads/zzamf;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;->zzf(Lcom/google/android/gms/internal/ads/zzamf;J)Z

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzf:Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpo;->zzc()J

    move-result-wide v3

    cmp-long v5, v3, v12

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzg:Lcom/google/android/gms/internal/ads/zznx;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzom;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzf:Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzpo;->zze()[J

    move-result-object v15

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzf:Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpo;->zzd()[J

    move-result-object v10

    .line 20
    invoke-direct {v14, v15, v10, v3, v4}, Lcom/google/android/gms/internal/ads/zzom;-><init>([J[JJ)V

    .line 21
    invoke-interface {v5, v14}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzo:Z

    goto :goto_2

    .line 24
    :cond_7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzm:I

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    .line 22
    invoke-virtual {v3, v2, v8}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 26
    :goto_3
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzi:Z

    if-nez v4, :cond_9

    if-eqz v2, :cond_9

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzi:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzf:Lcom/google/android/gms/internal/ads/zzpo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpo;->zzc()J

    move-result-wide v4

    cmp-long v2, v4, v12

    if-nez v2, :cond_8

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzn:J

    neg-long v10, v4

    goto :goto_4

    :cond_8
    const-wide/16 v10, 0x0

    :goto_4
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzj:J

    :cond_9
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzk:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzh:I

    if-eqz v3, :cond_0

    return v8

    .line 12
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 11
    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    const/16 v4, 0xb

    .line 12
    invoke-interface {v1, v2, v8, v4, v9}, Lcom/google/android/gms/internal/ads/zznv;->zza([BIIZ)Z

    move-result v2

    if-nez v2, :cond_c

    return v3

    .line 27
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 13
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzl:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzm:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzn:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzn:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzn:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Lcom/google/android/gms/internal/ads/zzamf;

    .line 18
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzh:I

    goto/16 :goto_0

    .line 10
    :cond_d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzk:I

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    .line 11
    invoke-virtual {v3, v2, v8}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzk:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzh:I

    goto/16 :goto_0

    .line 21
    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    .line 2
    invoke-interface {v1, v2, v8, v5, v9}, Lcom/google/android/gms/internal/ads/zznv;->zza([BIIZ)Z

    move-result v2

    if-nez v2, :cond_f

    return v3

    :cond_f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    and-int/2addr v2, v7

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    if-nez v2, :cond_10

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzg:Lcom/google/android/gms/internal/ads/zznx;

    .line 7
    invoke-interface {v7, v4, v9}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzpl;-><init>(Lcom/google/android/gms/internal/ads/zzox;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    :cond_10
    if-eqz v3, :cond_11

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzq:Lcom/google/android/gms/internal/ads/zzpr;

    if-nez v2, :cond_11

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpr;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzg:Lcom/google/android/gms/internal/ads/zznx;

    .line 8
    invoke-interface {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzpr;-><init>(Lcom/google/android/gms/internal/ads/zzox;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzq:Lcom/google/android/gms/internal/ads/zzpr;

    :cond_11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzg:Lcom/google/android/gms/internal/ads/zznx;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzk:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzpn;->zzh:I

    goto/16 :goto_0
.end method

.method public final zzd(JJ)V
    .locals 2

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzh:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzi:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzh:I

    :goto_0
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzk:I

    return-void
.end method
