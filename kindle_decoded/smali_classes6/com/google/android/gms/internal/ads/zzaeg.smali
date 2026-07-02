.class public final Lcom/google/android/gms/internal/ads/zzaeg;
.super Lcom/google/android/gms/internal/ads/zzahc;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:I

.field public final zzd:Lcom/google/android/gms/internal/ads/zzafv;

.field public final zze:I

.field public final zzf:Lcom/google/android/gms/internal/ads/zzo;

.field final zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaef;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzafv;IZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzafv;IZ)V
    .locals 13

    move v4, p1

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    if-eq v4, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    move-object/from16 v6, p5

    move/from16 v7, p6

    goto :goto_0

    .line 2
    :cond_0
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/internal/ads/zzadx;->zzd(I)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, index="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", format_supported="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object/from16 v6, p5

    move/from16 v7, p6

    const-string v0, "Source error"

    :goto_0
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ": null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    const/4 v9, 0x0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p4

    move v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v12, p9

    .line 6
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzafv;ILcom/google/android/gms/internal/ads/zzo;JZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzafv;ILcom/google/android/gms/internal/ads/zzo;JZ)V
    .locals 8

    move-object v6, p0

    move/from16 v7, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzahc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v7, :cond_1

    move v2, p4

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v2, p4

    :goto_0
    const/4 v3, 0x1

    .line 8
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    .line 9
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput v2, v6, Lcom/google/android/gms/internal/ads/zzaeg;->zza:I

    move-object v0, p5

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:Ljava/lang/String;

    move v0, p6

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaeg;->zzc:I

    move-object v0, p7

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzaeg;->zzd:Lcom/google/android/gms/internal/ads/zzafv;

    move/from16 v0, p8

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzaeg;->zze:I

    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzaeg;->zzf:Lcom/google/android/gms/internal/ads/zzo;

    iput-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzaeg;->zzg:Z

    return-void
.end method

.method public static zza(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzaeg;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeg;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzafv;IZI)Lcom/google/android/gms/internal/ads/zzaeg;
    .locals 11

    if-nez p3, :cond_0

    const/4 v0, 0x4

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    move v8, p4

    .line 1
    :goto_0
    new-instance v10, Lcom/google/android/gms/internal/ads/zzaeg;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, v10

    move-object v2, p0

    move/from16 v4, p6

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzafv;IZ)V

    return-object v10
.end method

.method public static zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeg;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method final zzd(Lcom/google/android/gms/internal/ads/zzo;)Lcom/google/android/gms/internal/ads/zzaeg;
    .locals 14

    .line 1
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzahc;->zzi:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaeg;->zza:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaeg;->zzb:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeg;->zzc:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaeg;->zzd:Lcom/google/android/gms/internal/ads/zzafv;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaeg;->zze:I

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzahc;->zzj:J

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/zzaeg;->zzg:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzafv;ILcom/google/android/gms/internal/ads/zzo;JZ)V

    return-object v13
.end method
