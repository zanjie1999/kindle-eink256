.class public final Lcom/google/android/gms/internal/ads/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:J

.field public final zzb:I

.field public final zzc:[Landroid/net/Uri;

.field public final zzd:[I

.field public final zze:[J

.field public final zzf:J

.field public final zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzb;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 10

    const/4 p1, 0x0

    new-array v4, p1, [I

    new-array v5, p1, [Landroid/net/Uri;

    new-array v6, p1, [J

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzc;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method private constructor <init>(JI[I[Landroid/net/Uri;[JJZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p4

    array-length p2, p5

    const/4 p7, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zza:J

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzc;->zzb:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:[I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzc;->zzc:[Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzc;->zze:[J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:J

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzc;->zzg:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzc;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzc;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzc;->zzb:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzc;->zzc:[Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzc;->zzc:[Landroid/net/Uri;

    .line 2
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzc;->zzd:[I

    .line 3
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzc;->zze:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzc;->zze:[J

    .line 4
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzc;->zzb:I

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzc:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:[I

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zze:[J

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    return v0
.end method

.method public final zza(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 2
    aget v1, v1, p1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzc;
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:[I

    array-length v0, p1

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 4
    invoke-static {v7, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zze:[J

    .line 5
    array-length v0, p1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-static {v9, v0, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzc:[Landroid/net/Uri;

    .line 9
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v3, p1

    .line 10
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzc;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object p1
.end method
