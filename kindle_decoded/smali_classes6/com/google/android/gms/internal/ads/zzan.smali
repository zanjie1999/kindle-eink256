.class public final Lcom/google/android/gms/internal/ads/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Landroid/net/Uri;

.field public final zzb:I

.field public final zzc:[B

.field public final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zze:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzf:J

.field public final zzg:J

.field public final zzh:Ljava/lang/String;

.field public final zzi:I


# direct methods
.method private constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-long/2addr p2, p7

    const/4 p4, 0x0

    const-wide/16 v0, 0x0

    const/4 p5, 0x1

    cmp-long p11, p2, v0

    if-ltz p11, :cond_0

    const/4 p11, 0x1

    goto :goto_0

    :cond_0
    const/4 p11, 0x0

    :goto_0
    invoke-static {p11}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    cmp-long p11, p7, v0

    if-ltz p11, :cond_1

    const/4 p11, 0x1

    goto :goto_1

    :cond_1
    const/4 p11, 0x0

    .line 2
    :goto_1
    invoke-static {p11}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    cmp-long p11, p9, v0

    if-gtz p11, :cond_2

    const-wide/16 v0, -0x1

    cmp-long p11, p9, v0

    if-nez p11, :cond_3

    :cond_2
    const/4 p4, 0x1

    .line 3
    :cond_3
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzan;->zzb:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzan;->zzc:[B

    new-instance p4, Ljava/util/HashMap;

    .line 4
    invoke-direct {p4, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzan;->zzd:Ljava/util/Map;

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzan;->zze:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzan;->zzg:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzan;->zzh:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzan;->zzi:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzam;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzan;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-long v2, p3, p5

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v12, p10

    .line 6
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzan;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static zza(I)Ljava/lang/String;
    .locals 0

    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzan;->zza(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzan;->zzf:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzan;->zzg:J

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzan;->zzi:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x46

    add-int/2addr v9, v7

    add-int/lit8 v9, v9, 0x4

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "DataSpec["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", null, "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzan;->zzi:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
