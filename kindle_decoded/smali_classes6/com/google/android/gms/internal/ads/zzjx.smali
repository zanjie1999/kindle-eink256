.class public abstract Lcom/google/android/gms/internal/ads/zzjx;
.super Lcom/google/android/gms/internal/ads/zzjz;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzjw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjz;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract zze(Lcom/google/android/gms/internal/ads/zzjw;[[[I[ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;)Landroid/util/Pair;
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
.end method

.method public final zzi(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzjw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjx;->zza:Lcom/google/android/gms/internal/ads/zzjw;

    return-void
.end method

.method public final zzj([Lcom/google/android/gms/internal/ads/zzahw;Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzka;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x3

    new-array v2, v1, [I

    new-array v3, v1, [[Lcom/google/android/gms/internal/ads/zzq;

    new-array v11, v1, [[[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 1
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    new-array v7, v6, [Lcom/google/android/gms/internal/ads/zzq;

    aput-object v7, v3, v5

    new-array v6, v6, [[I

    aput-object v6, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v12, v1, [I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 2
    aget-object v6, p1, v5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahw;->zzG()I

    move-result v6

    aput v6, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 3
    :goto_2
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v5, v6, :cond_9

    .line 4
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v6

    .line 5
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzalt;->zzf(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_3
    if-ge v9, v1, :cond_6

    .line 6
    aget-object v15, p1, v9

    const/4 v8, 0x0

    .line 7
    :goto_4
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v4, :cond_2

    .line 8
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/android/gms/internal/ads/zzahw;->zzH(Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 9
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 10
    :cond_2
    aget v1, v2, v9

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    if-gt v8, v13, :cond_4

    if-ne v8, v13, :cond_5

    const/4 v4, 0x5

    if-ne v7, v4, :cond_5

    if-nez v14, :cond_5

    if-eqz v1, :cond_5

    move v13, v8

    move v10, v9

    const/4 v14, 0x1

    goto :goto_6

    :cond_4
    move v14, v1

    move v13, v8

    move v10, v9

    :cond_5
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    if-ne v10, v1, :cond_7

    .line 11
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    const/4 v4, 0x1

    new-array v1, v4, [I

    goto :goto_8

    :cond_7
    const/4 v4, 0x1

    .line 12
    aget-object v1, p1, v10

    .line 13
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    new-array v7, v4, [I

    const/4 v4, 0x0

    .line 14
    :goto_7
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v4, :cond_8

    .line 15
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzahw;->zzH(Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    move-object v1, v7

    .line 16
    :goto_8
    aget v4, v2, v10

    .line 17
    aget-object v7, v3, v10

    aput-object v6, v7, v4

    .line 18
    aget-object v6, v11, v10

    aput-object v1, v6, v4

    const/4 v1, 0x1

    add-int/2addr v4, v1

    .line 19
    aput v4, v2, v10

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x2

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    new-array v7, v1, [Lcom/google/android/gms/internal/ads/zzs;

    new-array v5, v1, [Ljava/lang/String;

    new-array v6, v1, [I

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_a

    .line 15
    aget v0, v2, v4

    new-instance v1, Lcom/google/android/gms/internal/ads/zzs;

    aget-object v8, v3, v4

    .line 20
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/ads/zzq;

    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzs;-><init>([Lcom/google/android/gms/internal/ads/zzq;)V

    aput-object v1, v7, v4

    aget-object v1, v11, v4

    .line 21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v11, v4

    aget-object v0, p1, v4

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahw;->zzc()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    aget-object v0, p1, v4

    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahw;->zzac()I

    move-result v0

    aput v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    goto :goto_9

    :cond_a
    const/4 v0, 0x2

    aget v1, v2, v0

    new-instance v10, Lcom/google/android/gms/internal/ads/zzs;

    aget-object v0, v3, v0

    .line 24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzq;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzs;-><init>([Lcom/google/android/gms/internal/ads/zzq;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjw;

    move-object v4, v0

    move-object v8, v12

    move-object v9, v11

    .line 25
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzjw;-><init>([Ljava/lang/String;[I[Lcom/google/android/gms/internal/ads/zzs;[I[[[ILcom/google/android/gms/internal/ads/zzs;)V

    move-object/from16 v4, p0

    move-object v5, v0

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 26
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzjx;->zze(Lcom/google/android/gms/internal/ads/zzjw;[[[I[ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;)Landroid/util/Pair;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzka;

    .line 27
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Lcom/google/android/gms/internal/ads/zzahx;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzjg;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzka;-><init>([Lcom/google/android/gms/internal/ads/zzahx;[Lcom/google/android/gms/internal/ads/zzjg;Ljava/lang/Object;[B)V

    return-object v2
.end method
