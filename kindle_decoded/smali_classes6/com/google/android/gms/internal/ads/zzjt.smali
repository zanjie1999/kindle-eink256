.class public final Lcom/google/android/gms/internal/ads/zzjt;
.super Lcom/google/android/gms/internal/ads/zzjx;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfpw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfpw<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfpw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfpw<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzjn;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzjd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzjh;->zza:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjt;->zzb:Lcom/google/android/gms/internal/ads/zzfpw;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzji;->zza:Ljava/util/Comparator;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjt;->zzc:Lcom/google/android/gms/internal/ads/zzfpw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzjn;->zzA:Lcom/google/android/gms/internal/ads/zzjn;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzjd;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjn;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zze:Lcom/google/android/gms/internal/ads/zzjd;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzfpw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzjt;->zzb:Lcom/google/android/gms/internal/ads/zzfpw;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/ads/zzfpw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzjt;->zzc:Lcom/google/android/gms/internal/ads/zzfpw;

    return-object v0
.end method

.method protected static zzf(IZ)Z
    .locals 3

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected static zzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static zzh(Lcom/google/android/gms/internal/ads/zzafv;Ljava/lang/String;Z)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjt;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzjt;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "-"

    .line 5
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzu(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzu(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzjn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzjn;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzjo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzjk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzjn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjz;->zzl()V

    :cond_0
    return-void
.end method

.method protected final zze(Lcom/google/android/gms/internal/ads/zzjw;[[[I[ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;)Landroid/util/Pair;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzjw;",
            "[[[I[I",
            "Lcom/google/android/gms/internal/ads/zzhf;",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/gms/internal/ads/zzahx;",
            "[",
            "Lcom/google/android/gms/internal/ads/zzjg;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjt;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzjn;

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzju;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v6, v3, :cond_1a

    .line 2
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v12

    if-ne v12, v3, :cond_19

    if-nez v7, :cond_17

    .line 3
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v7

    aget-object v12, p2, v6

    aget v13, p3, v6

    .line 4
    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzw;->zzx:Z

    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzw;->zzw:Z

    .line 5
    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzF:Z

    .line 6
    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzE:Z

    const/4 v13, 0x0

    .line 7
    :goto_1
    iget v14, v7, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v13, v14, :cond_0

    .line 8
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v14

    .line 9
    aget-object v15, v12, v13

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzc:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzd:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zze:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzf:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzg:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzh:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzi:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzj:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzk:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzl:I

    iget-boolean v15, v2, Lcom/google/android/gms/internal/ads/zzw;->zzm:Z

    .line 10
    iget v14, v14, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    .line 11
    :goto_2
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v13, v10, :cond_14

    .line 12
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v10

    .line 13
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzw;->zzk:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzw;->zzl:I

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zzw;->zzm:Z

    move-object/from16 v17, v7

    new-instance v7, Ljava/util/ArrayList;

    .line 14
    iget v0, v10, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 15
    :goto_3
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v0, :cond_1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_e

    if-ne v5, v0, :cond_2

    goto/16 :goto_c

    :cond_2
    move/from16 v19, v8

    const/4 v11, 0x0

    .line 17
    :goto_4
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v11, :cond_b

    .line 18
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v8

    .line 19
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    if-lez v1, :cond_9

    move-object/from16 v20, v4

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    if-lez v4, :cond_8

    if-eqz v9, :cond_5

    if-gt v1, v4, :cond_3

    move/from16 v21, v9

    const/4 v9, 0x0

    goto :goto_5

    :cond_3
    move/from16 v21, v9

    const/4 v9, 0x1

    :goto_5
    if-gt v3, v5, :cond_4

    move/from16 v22, v3

    const/4 v3, 0x0

    goto :goto_6

    :cond_4
    move/from16 v22, v3

    const/4 v3, 0x1

    :goto_6
    if-eq v9, v3, :cond_6

    move v9, v5

    move/from16 v23, v9

    move/from16 v3, v22

    goto :goto_7

    :cond_5
    move/from16 v22, v3

    move/from16 v21, v9

    :cond_6
    move v3, v5

    move/from16 v23, v3

    move/from16 v9, v22

    :goto_7
    mul-int v5, v1, v3

    move/from16 v24, v6

    mul-int v6, v4, v9

    if-lt v5, v6, :cond_7

    new-instance v3, Landroid/graphics/Point;

    .line 20
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result v1

    invoke-direct {v3, v9, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_8

    .line 23
    :cond_7
    new-instance v1, Landroid/graphics/Point;

    .line 21
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v1

    .line 22
    :goto_8
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    mul-int v5, v1, v4

    .line 23
    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v8, 0x3f7ae148    # 0.98f

    mul-float v6, v6, v8

    float-to-int v6, v6

    if-lt v1, v6, :cond_a

    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    if-lt v4, v1, :cond_a

    if-ge v5, v0, :cond_a

    move v0, v5

    goto :goto_a

    :cond_8
    move/from16 v22, v3

    goto :goto_9

    :cond_9
    move/from16 v22, v3

    move-object/from16 v20, v4

    :goto_9
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v21, v9

    :cond_a
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v20

    move/from16 v9, v21

    move/from16 v3, v22

    move/from16 v5, v23

    move/from16 v6, v24

    goto/16 :goto_4

    :cond_b
    move-object/from16 v20, v4

    move/from16 v24, v6

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_f

    .line 24
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, -0x1

    add-int/2addr v1, v3

    :goto_b
    if-ltz v1, :cond_f

    .line 25
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzafv;->zzc()I

    move-result v4

    if-eq v4, v3, :cond_c

    if-le v4, v0, :cond_d

    .line 27
    :cond_c
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    goto :goto_b

    :cond_e
    :goto_c
    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v19, v8

    .line 28
    :cond_f
    aget-object v0, v12, v13

    move-object/from16 v1, v16

    const/4 v3, 0x0

    .line 29
    :goto_d
    iget v4, v10, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v3, :cond_13

    .line 30
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v4

    .line 31
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzafv;->zze:I

    .line 32
    aget v5, v0, v3

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Lcom/google/android/gms/internal/ads/zzjs;

    .line 33
    aget v6, v0, v3

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {v5, v4, v2, v6, v8}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzjn;IZ)V

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzjs;->zza:Z

    if-nez v4, :cond_10

    .line 35
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzD:Z

    if-nez v4, :cond_10

    goto :goto_e

    :cond_10
    if-eqz v1, :cond_11

    .line 36
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzjs;->zza(Lcom/google/android/gms/internal/ads/zzjs;)I

    move-result v4

    if-lez v4, :cond_12

    :cond_11
    move v15, v3

    move-object v1, v5

    move-object v14, v10

    :cond_12
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move-object/from16 v7, v17

    move/from16 v8, v19

    move-object/from16 v4, v20

    move/from16 v6, v24

    const/4 v3, 0x2

    const/4 v11, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v19, v8

    if-nez v14, :cond_15

    const/4 v10, 0x0

    goto :goto_f

    .line 39
    :cond_15
    new-instance v10, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput v15, v1, v0

    .line 37
    invoke-direct {v10, v14, v1, v0}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    .line 38
    :goto_f
    aput-object v10, v20, v24

    if-eqz v10, :cond_16

    move-object/from16 v0, p1

    move/from16 v5, v24

    const/4 v7, 0x1

    goto :goto_10

    :cond_16
    move-object/from16 v0, p1

    move/from16 v5, v24

    const/4 v7, 0x0

    goto :goto_10

    :cond_17
    move-object/from16 v20, v4

    move/from16 v19, v8

    move-object/from16 v0, p1

    move v5, v6

    .line 39
    :goto_10
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-lez v1, :cond_18

    const/4 v11, 0x1

    goto :goto_11

    :cond_18
    const/4 v11, 0x0

    :goto_11
    or-int v8, v19, v11

    goto :goto_12

    :cond_19
    move-object v0, v1

    move-object/from16 v20, v4

    move v5, v6

    move/from16 v19, v8

    :goto_12
    add-int/lit8 v6, v5, 0x1

    move-object v1, v0

    move-object/from16 v4, v20

    const/4 v3, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1a
    move-object v0, v1

    move-object/from16 v20, v4

    move/from16 v19, v8

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    const/4 v6, 0x2

    if-ge v4, v6, :cond_2d

    .line 40
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2c

    .line 41
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzM:Z

    if-nez v6, :cond_1c

    if-nez v19, :cond_1b

    goto :goto_14

    :cond_1b
    const/4 v6, 0x0

    goto :goto_15

    :cond_1c
    :goto_14
    const/4 v6, 0x1

    .line 42
    :goto_15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v7

    aget-object v8, p2, v4

    aget v9, p3, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 43
    :goto_16
    iget v13, v7, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v10, v13, :cond_21

    .line 44
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v13

    .line 45
    aget-object v14, v8, v10

    move/from16 v16, v11

    const/4 v15, 0x0

    .line 46
    :goto_17
    iget v11, v13, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v15, :cond_20

    .line 47
    aget v11, v14, v15

    move/from16 v17, v12

    iget-boolean v12, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 48
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/internal/ads/zzjj;

    move-object/from16 v18, v13

    .line 49
    aget v13, v14, v15

    invoke-direct {v12, v11, v2, v13}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzjn;I)V

    if-eqz v9, :cond_1d

    .line 50
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzjj;->zza(Lcom/google/android/gms/internal/ads/zzjj;)I

    move-result v11

    if-lez v11, :cond_1f

    :cond_1d
    move/from16 v16, v10

    move-object v9, v12

    move v12, v15

    goto :goto_18

    :cond_1e
    move-object/from16 v18, v13

    :cond_1f
    move/from16 v12, v17

    :goto_18
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v18

    goto :goto_17

    :cond_20
    move/from16 v17, v12

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    goto :goto_16

    :cond_21
    const/4 v10, -0x1

    if-ne v11, v10, :cond_22

    const/4 v6, 0x0

    goto/16 :goto_1c

    .line 51
    :cond_22
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v7

    .line 52
    iget-boolean v10, v2, Lcom/google/android/gms/internal/ads/zzw;->zzx:Z

    iget-boolean v10, v2, Lcom/google/android/gms/internal/ads/zzw;->zzw:Z

    if-eqz v6, :cond_26

    .line 53
    aget-object v6, v8, v11

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzw;->zzr:I

    iget-boolean v8, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzH:Z

    iget-boolean v8, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzI:Z

    iget-boolean v8, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzJ:Z

    .line 54
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v8

    .line 55
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    const/4 v11, 0x1

    new-array v10, v11, [I

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 56
    :goto_19
    iget v14, v7, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v11, :cond_25

    if-eq v11, v12, :cond_23

    .line 57
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v14

    aget v15, v6, v11

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 58
    iget v6, v14, Lcom/google/android/gms/internal/ads/zzafv;->zzh:I

    const/4 v15, -0x1

    if-eq v6, v15, :cond_24

    iget v6, v14, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-eq v6, v15, :cond_24

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-ne v6, v15, :cond_24

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    if-eqz v6, :cond_24

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    .line 59
    invoke-static {v6, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    iget v6, v14, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_24

    iget v14, v8, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    if-ne v6, v14, :cond_24

    goto :goto_1a

    :cond_23
    move-object/from16 v16, v6

    :goto_1a
    add-int/lit8 v6, v13, 0x1

    .line 60
    aput v11, v10, v13

    move v13, v6

    :cond_24
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v16

    goto :goto_19

    .line 61
    :cond_25
    invoke-static {v10, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 62
    array-length v8, v6

    const/4 v10, 0x1

    if-le v8, v10, :cond_27

    new-instance v8, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v11, 0x0

    .line 63
    invoke-direct {v8, v7, v6, v11}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    goto :goto_1b

    :cond_26
    const/4 v10, 0x1

    :cond_27
    const/4 v11, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-nez v8, :cond_28

    new-instance v8, Lcom/google/android/gms/internal/ads/zzju;

    new-array v6, v10, [I

    aput v12, v6, v11

    .line 64
    invoke-direct {v8, v7, v6, v11}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    :cond_28
    if-eqz v9, :cond_2b

    .line 65
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_1c
    if-eqz v6, :cond_2c

    if-eqz v1, :cond_29

    .line 66
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzjj;

    .line 67
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzjj;->zza(Lcom/google/android/gms/internal/ads/zzjj;)I

    move-result v7

    if-lez v7, :cond_2c

    :cond_29
    const/4 v1, -0x1

    if-eq v3, v1, :cond_2a

    const/4 v1, 0x0

    .line 68
    aput-object v1, v20, v3

    .line 69
    :cond_2a
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzju;

    .line 70
    aput-object v1, v20, v4

    .line 71
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzju;->zzb:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    .line 72
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzjj;

    move-object v5, v1

    move-object v1, v3

    move v3, v4

    goto :goto_1d

    :cond_2b
    const/4 v6, 0x0

    .line 123
    throw v6

    :cond_2c
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    :cond_2d
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v6, :cond_3f

    .line 73
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3e

    if-eq v7, v6, :cond_3e

    const/4 v6, 0x3

    if-eq v7, v6, :cond_34

    .line 90
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    aget-object v7, p2, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 91
    :goto_1f
    iget v12, v6, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v10, v12, :cond_32

    .line 92
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v12

    .line 93
    aget-object v13, v7, v10

    const/4 v14, 0x0

    .line 94
    :goto_20
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v14, :cond_31

    .line 95
    aget v15, v13, v14

    move-object/from16 p3, v6

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 96
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v6

    new-instance v15, Lcom/google/android/gms/internal/ads/zzjl;

    move-object/from16 v16, v7

    .line 97
    aget v7, v13, v14

    invoke-direct {v15, v6, v7}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(Lcom/google/android/gms/internal/ads/zzafv;I)V

    if-eqz v9, :cond_2e

    .line 98
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzjl;->zza(Lcom/google/android/gms/internal/ads/zzjl;)I

    move-result v6

    if-lez v6, :cond_30

    :cond_2e
    move-object v8, v12

    move v11, v14

    move-object v9, v15

    goto :goto_21

    :cond_2f
    move-object/from16 v16, v7

    :cond_30
    :goto_21
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    goto :goto_20

    :cond_31
    move-object/from16 p3, v6

    move-object/from16 v16, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_32
    if-nez v8, :cond_33

    const/4 v6, 0x0

    goto :goto_22

    .line 100
    :cond_33
    new-instance v6, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v7, 0x1

    new-array v9, v7, [I

    const/4 v7, 0x0

    aput v11, v9, v7

    .line 99
    invoke-direct {v6, v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    .line 100
    :goto_22
    aput-object v6, v20, v4

    goto/16 :goto_27

    .line 74
    :cond_34
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    aget-object v7, p2, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 75
    :goto_23
    iget v12, v6, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v11, v12, :cond_39

    .line 76
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v12

    .line 77
    aget-object v13, v7, v11

    const/4 v14, 0x0

    .line 78
    :goto_24
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v14, :cond_38

    .line 79
    aget v15, v13, v14

    move-object/from16 p3, v6

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 80
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v6

    new-instance v15, Lcom/google/android/gms/internal/ads/zzjr;

    move-object/from16 v16, v7

    .line 81
    aget v7, v13, v14

    invoke-direct {v15, v6, v2, v7, v5}, Lcom/google/android/gms/internal/ads/zzjr;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzjn;ILjava/lang/String;)V

    iget-boolean v6, v15, Lcom/google/android/gms/internal/ads/zzjr;->zza:Z

    if-eqz v6, :cond_37

    if-eqz v9, :cond_35

    .line 82
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Lcom/google/android/gms/internal/ads/zzjr;)I

    move-result v6

    if-lez v6, :cond_37

    :cond_35
    move-object v8, v12

    move v10, v14

    move-object v9, v15

    goto :goto_25

    :cond_36
    move-object/from16 v16, v7

    :cond_37
    :goto_25
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    goto :goto_24

    :cond_38
    move-object/from16 p3, v6

    move-object/from16 v16, v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_39
    if-nez v8, :cond_3a

    const/4 v6, 0x0

    goto :goto_26

    .line 89
    :cond_3a
    new-instance v6, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v7, 0x1

    new-array v11, v7, [I

    const/4 v7, 0x0

    aput v10, v11, v7

    .line 83
    invoke-direct {v6, v8, v11, v7}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    if-eqz v9, :cond_3d

    .line 84
    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_26
    if-eqz v6, :cond_3e

    if-eqz v1, :cond_3b

    .line 85
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzjr;

    .line 86
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Lcom/google/android/gms/internal/ads/zzjr;)I

    move-result v7

    if-lez v7, :cond_3e

    :cond_3b
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v3, v7, :cond_3c

    .line 87
    aput-object v8, v20, v3

    .line 88
    :cond_3c
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzju;

    aput-object v1, v20, v4

    .line 89
    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzjr;

    move v3, v4

    goto :goto_28

    :cond_3d
    const/4 v8, 0x0

    .line 122
    throw v8

    :cond_3e
    :goto_27
    const/4 v7, -0x1

    :goto_28
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1e

    :cond_3f
    const/4 v1, 0x0

    :goto_29
    const/4 v3, 0x2

    if-ge v1, v3, :cond_44

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v3

    .line 102
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzjn;->zzd(I)Z

    move-result v4

    if-nez v4, :cond_43

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzw;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_2b

    .line 104
    :cond_40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v3

    .line 105
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzjn;->zze(ILcom/google/android/gms/internal/ads/zzs;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 106
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzjn;->zzf(ILcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzjq;

    move-result-object v4

    if-nez v4, :cond_41

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_2a

    .line 107
    :cond_41
    new-instance v4, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6, v5}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    :goto_2a
    aput-object v4, v20, v1

    goto :goto_2c

    :cond_42
    const/4 v6, 0x0

    goto :goto_2c

    :cond_43
    :goto_2b
    const/4 v6, 0x0

    .line 103
    aput-object v6, v20, v1

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_44
    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 107
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjt;->zze:Lcom/google/android/gms/internal/ads/zzjd;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjz;->zzm()Lcom/google/android/gms/internal/ads/zzki;

    move-result-object v4

    .line 109
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzje;->zza([Lcom/google/android/gms/internal/ads/zzju;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v5

    const/4 v7, 0x2

    new-array v13, v7, [Lcom/google/android/gms/internal/ads/zzjg;

    const/4 v14, 0x0

    :goto_2d
    if-ge v14, v7, :cond_48

    .line 110
    aget-object v7, v20, v14

    if-eqz v7, :cond_47

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzju;->zzb:[I

    .line 111
    array-length v8, v9

    if-nez v8, :cond_45

    goto :goto_2f

    :cond_45
    const/4 v15, 0x1

    if-ne v8, v15, :cond_46

    new-instance v8, Lcom/google/android/gms/internal/ads/zzjv;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzq;

    const/16 v16, 0x0

    .line 112
    aget v23, v9, v16

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    .line 113
    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzjv;-><init>(Lcom/google/android/gms/internal/ads/zzq;IIILjava/lang/Object;)V

    goto :goto_2e

    :cond_46
    const/16 v16, 0x0

    .line 115
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzq;

    const/4 v10, 0x0

    .line 114
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/google/android/gms/internal/ads/zzfoj;

    move-object v7, v3

    move-object v11, v4

    .line 115
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzq;[IILcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzfoj;)Lcom/google/android/gms/internal/ads/zzje;

    move-result-object v8

    :goto_2e
    aput-object v8, v13, v14

    goto :goto_30

    :cond_47
    :goto_2f
    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_30
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    goto :goto_2d

    :cond_48
    const/16 v16, 0x0

    new-array v3, v7, [Lcom/google/android/gms/internal/ads/zzahx;

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v7, :cond_4c

    .line 116
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v4

    .line 117
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzjn;->zzd(I)Z

    move-result v8

    if-nez v8, :cond_4b

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzw;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzfoe;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_32

    .line 118
    :cond_49
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v4

    const/4 v8, -0x2

    if-eq v4, v8, :cond_4a

    aget-object v4, v13, v5

    if-eqz v4, :cond_4b

    :cond_4a
    sget-object v4, Lcom/google/android/gms/internal/ads/zzahx;->zza:Lcom/google/android/gms/internal/ads/zzahx;

    goto :goto_33

    :cond_4b
    :goto_32
    move-object v4, v6

    .line 119
    :goto_33
    aput-object v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 120
    :cond_4c
    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzL:Z

    .line 121
    invoke-static {v3, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
