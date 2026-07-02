.class public abstract Lcom/google/android/gms/internal/ads/zzaiq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zzc:Lcom/google/android/gms/internal/ads/zzaiq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzail;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzc:Lcom/google/android/gms/internal/ads/zzaiq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaik;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzaiq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaiq;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzg()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzg()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaip;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzain;

    .line 5
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaip;

    .line 6
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzaip;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzain;

    .line 7
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    const/4 v6, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v7

    if-ge v6, v7, :cond_4

    const-wide/16 v7, 0x0

    .line 9
    invoke-virtual {p0, v6, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v9

    .line 10
    invoke-virtual {p1, v6, v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzaip;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzg()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 12
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v4

    .line 13
    invoke-virtual {p1, v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzain;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaip;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzain;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v2

    add-int/lit16 v2, v2, 0xd9

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    const-wide/16 v5, 0x0

    .line 5
    invoke-virtual {p0, v4, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaip;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzg()I

    move-result v0

    add-int/2addr v2, v0

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzg()I

    move-result v0

    if-ge v3, v0, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzain;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public abstract zza()I
.end method

.method public zzb(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzd(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 3
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzd(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/2addr p1, v0

    return p1
.end method

.method public zzc(IIZ)I
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result p2

    const/4 p3, -0x1

    if-ne p1, p2, :cond_0

    return p3

    :cond_0
    add-int/2addr p1, p3

    return p1
.end method

.method public zzd(Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public zze(Z)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;
.end method

.method public abstract zzg()I
.end method

.method public abstract zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;
.end method

.method public abstract zzi(Ljava/lang/Object;)I
.end method

.method public abstract zzj(I)Ljava/lang/Object;
.end method

.method public final zzt()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzu(ILcom/google/android/gms/internal/ads/zzain;Lcom/google/android/gms/internal/ads/zzaip;IZ)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object p2

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v2

    .line 4
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    if-ne v2, p1, :cond_1

    .line 5
    invoke-virtual {p0, p2, p4, p5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzb(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object p1

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaip;",
            "Lcom/google/android/gms/internal/ads/zzain;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzw(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJJ)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaip;",
            "Lcom/google/android/gms/internal/ads/zzain;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzc(III)I

    .line 2
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    iget-wide p3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzl:J

    move-wide p4, v2

    .line 3
    :cond_0
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    .line 4
    invoke-virtual {p0, p3, p2, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    .line 5
    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    if-ge p3, v0, :cond_1

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/zzain;->zze:J

    cmp-long v0, p4, v2

    if-eqz v0, :cond_1

    add-int/lit8 v4, p3, 0x1

    .line 6
    invoke-virtual {p0, v4, p2, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v5

    .line 7
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzain;->zze:J

    if-ltz v0, :cond_1

    move p3, v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    .line 9
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzain;->zze:J

    .line 10
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    cmp-long p1, v0, p6

    if-eqz p1, :cond_2

    const-wide/16 p6, -0x1

    add-long/2addr v0, p6

    .line 11
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 12
    :cond_2
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    const-wide/16 p5, 0x9

    cmp-long p1, p3, p5

    if-nez p1, :cond_3

    const-string p1, "XXX"

    const-string p5, "YYY"

    .line 13
    invoke-static {p1, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method public zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object p1

    return-object p1
.end method
