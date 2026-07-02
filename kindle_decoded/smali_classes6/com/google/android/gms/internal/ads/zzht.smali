.class final Lcom/google/android/gms/internal/ads/zzht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;
.implements Lcom/google/android/gms/internal/ads/zzhd;


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/ads/zzhe;

.field private final zzb:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/gms/internal/ads/zziu;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzhe;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/ads/zzhd;

.field private zze:Lcom/google/android/gms/internal/ads/zzs;

.field private zzf:[Lcom/google/android/gms/internal/ads/zzhe;

.field private zzg:Lcom/google/android/gms/internal/ads/zziw;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzgs;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzgs;[J[Lcom/google/android/gms/internal/ads/zzhe;[B)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zzh:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zzc:Ljava/util/ArrayList;

    const/4 p1, 0x0

    new-array p4, p1, [Lcom/google/android/gms/internal/ads/zziw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgr;

    .line 2
    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzgr;-><init>([Lcom/google/android/gms/internal/ads/zziw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzg:Lcom/google/android/gms/internal/ads/zziw;

    new-instance p4, Ljava/util/IdentityHashMap;

    .line 3
    invoke-direct {p4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzht;->zzb:Ljava/util/IdentityHashMap;

    new-array p4, p1, [Lcom/google/android/gms/internal/ads/zzhe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzht;->zzf:[Lcom/google/android/gms/internal/ads/zzhe;

    :goto_0
    array-length p4, p3

    if-ge p1, p4, :cond_1

    .line 4
    aget-wide v0, p2, p1

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhr;

    .line 5
    aget-object v3, p3, p1

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(Lcom/google/android/gms/internal/ads/zzhe;J)V

    aput-object v2, p4, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    aget-object p1, v0, p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhr;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhr;->zza(Lcom/google/android/gms/internal/ads/zzhr;)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhd;J)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zzd:Lcom/google/android/gms/internal/ads/zzhd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zzc:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget-object v2, p1, v1

    .line 3
    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(Lcom/google/android/gms/internal/ads/zzhd;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhe;->zzc()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zze:Lcom/google/android/gms/internal/ads/zzs;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final zze(JZ)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzht;->zzf:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 2
    invoke-interface {v3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhe;->zze(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzf(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzg:Lcom/google/android/gms/internal/ads/zziw;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zziw;->zzf(J)V

    return-void
.end method

.method public final zzg()J
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->zzf:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v2, v1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_8

    aget-object v9, v1, v6

    .line 2
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzhe;->zzg()J

    move-result-wide v10

    const-string v12, "Unexpected child seekToUs result."

    cmp-long v13, v10, v4

    if-eqz v13, :cond_5

    cmp-long v13, v7, v4

    if-nez v13, :cond_3

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzht;->zzf:[Lcom/google/android/gms/internal/ads/zzhe;

    .line 3
    array-length v8, v7

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_2

    aget-object v14, v7, v13

    if-ne v14, v9, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-interface {v14, v10, v11}, Lcom/google/android/gms/internal/ads/zzhe;->zzi(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-nez v16, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_2
    move-wide v7, v10

    goto :goto_3

    :cond_3
    cmp-long v9, v10, v7

    if-nez v9, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Conflicting discontinuities."

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    cmp-long v10, v7, v4

    if-eqz v10, :cond_7

    .line 5
    invoke-interface {v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzhe;->zzi(J)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 8
    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    return-wide v7
.end method

.method public final zzh()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzg:Lcom/google/android/gms/internal/ads/zziw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziw;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzf:[Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzi(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzht;->zzf:[Lcom/google/android/gms/internal/ads/zzhe;

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzi(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide p1
.end method

.method public final zzj(JLcom/google/android/gms/internal/ads/zzahz;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzf:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    .line 1
    aget-object v0, v0, v2

    .line 2
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhe;->zzj(JLcom/google/android/gms/internal/ads/zzahz;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzk()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzg:Lcom/google/android/gms/internal/ads/zziw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziw;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzc:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzht;->zzc:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhe;

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzl(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzg:Lcom/google/android/gms/internal/ads/zziw;

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zziw;->zzl(J)Z

    move-result p1

    return p1
.end method

.method public final zzm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzg:Lcom/google/android/gms/internal/ads/zziw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziw;->zzm()Z

    move-result v0

    return v0
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zzc:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    aget-object v4, p1, v2

    .line 4
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhe;->zzd()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-array p1, v3, [Lcom/google/android/gms/internal/ads/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 6
    aget-object v5, v0, v3

    .line 7
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhe;->zzd()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v5

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    add-int/lit8 v8, v4, 0x1

    .line 8
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v9

    aput-object v9, p1, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzs;-><init>([Lcom/google/android/gms/internal/ads/zzq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zze:Lcom/google/android/gms/internal/ads/zzs;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zzd:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz p1, :cond_4

    .line 10
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzn(Lcom/google/android/gms/internal/ads/zzhe;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 11
    throw p1
.end method

.method public final bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zziw;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhe;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzht;->zzd:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zziv;->zzp(Lcom/google/android/gms/internal/ads/zziw;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzq([Lcom/google/android/gms/internal/ads/zzjg;[Z[Lcom/google/android/gms/internal/ads/zziu;[ZJ)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    array-length v3, v1

    new-array v4, v3, [I

    new-array v3, v3, [I

    const/4 v6, 0x0

    .line 2
    :goto_0
    array-length v7, v1

    const/4 v8, 0x0

    if-ge v6, v7, :cond_4

    .line 3
    aget-object v7, v2, v6

    if-nez v7, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzht;->zzb:Ljava/util/IdentityHashMap;

    .line 3
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    :goto_1
    const/4 v7, -0x1

    if-nez v8, :cond_1

    const/4 v8, -0x1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    aput v8, v4, v6

    .line 5
    aput v7, v3, v6

    .line 6
    aget-object v8, v1, v6

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzjg;->zzb()Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v11, v10

    if-ge v9, v11, :cond_3

    .line 7
    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzhe;->zzd()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Lcom/google/android/gms/internal/ads/zzq;)I

    move-result v10

    if-eq v10, v7, :cond_2

    .line 8
    aput v9, v3, v6

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3
    :cond_4
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzht;->zzb:Ljava/util/IdentityHashMap;

    .line 9
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    new-array v6, v7, [Lcom/google/android/gms/internal/ads/zziu;

    new-array v14, v7, [Lcom/google/android/gms/internal/ads/zziu;

    new-array v15, v7, [Lcom/google/android/gms/internal/ads/zzjg;

    new-instance v13, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v9, v9

    .line 10
    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v16, p5

    const/4 v12, 0x0

    :goto_5
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v9, v9

    if-ge v12, v9, :cond_10

    const/4 v9, 0x0

    .line 11
    :goto_6
    array-length v10, v1

    if-ge v9, v10, :cond_7

    .line 12
    aget v10, v4, v9

    if-ne v10, v12, :cond_5

    aget-object v10, v2, v9

    goto :goto_7

    :cond_5
    move-object v10, v8

    :goto_7
    aput-object v10, v14, v9

    .line 13
    aget v10, v3, v9

    if-ne v10, v12, :cond_6

    aget-object v10, v1, v9

    goto :goto_8

    :cond_6
    move-object v10, v8

    :goto_8
    aput-object v10, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    .line 14
    aget-object v9, v9, v12

    move-object v10, v15

    move-object/from16 v11, p2

    move v5, v12

    move-object v12, v14

    move-object/from16 v18, v13

    move-object/from16 v13, p4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-wide/from16 v14, v16

    .line 15
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzhe;->zzq([Lcom/google/android/gms/internal/ads/zzjg;[Z[Lcom/google/android/gms/internal/ads/zziu;[ZJ)J

    move-result-wide v9

    if-nez v5, :cond_8

    move-wide/from16 v16, v9

    goto :goto_9

    :cond_8
    cmp-long v11, v9, v16

    if-nez v11, :cond_f

    :goto_9
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 16
    :goto_a
    array-length v11, v1

    if-ge v9, v11, :cond_d

    .line 17
    aget v11, v3, v9

    const/4 v12, 0x1

    if-ne v11, v5, :cond_a

    .line 18
    aget-object v10, v19, v9

    if-eqz v10, :cond_9

    .line 19
    aput-object v10, v6, v9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzht;->zzb:Ljava/util/IdentityHashMap;

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v10, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_c

    .line 24
    :cond_9
    throw v8

    .line 21
    :cond_a
    aget v11, v4, v9

    if-ne v11, v5, :cond_c

    .line 22
    aget-object v11, v19, v9

    if-nez v11, :cond_b

    goto :goto_b

    :cond_b
    const/4 v12, 0x0

    :goto_b
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    :cond_c
    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_d
    if-eqz v10, :cond_e

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzht;->zza:[Lcom/google/android/gms/internal/ads/zzhe;

    .line 23
    aget-object v9, v9, v5

    move-object/from16 v10, v18

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_e
    move-object/from16 v10, v18

    :goto_d
    add-int/lit8 v12, v5, 0x1

    move-object v13, v10

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    goto/16 :goto_5

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object v10, v13

    const/4 v1, 0x0

    .line 26
    invoke-static {v6, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhe;

    .line 27
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzhe;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->zzf:[Lcom/google/android/gms/internal/ads/zzhe;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgr;

    .line 28
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgr;-><init>([Lcom/google/android/gms/internal/ads/zziw;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzht;->zzg:Lcom/google/android/gms/internal/ads/zziw;

    return-wide v16
.end method
