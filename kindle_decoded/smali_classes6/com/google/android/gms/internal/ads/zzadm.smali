.class public abstract Lcom/google/android/gms/internal/ads/zzadm;
.super Lcom/google/android/gms/internal/ads/zzaiq;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/ads/zzix;


# direct methods
.method public constructor <init>(ZLcom/google/android/gms/internal/ads/zzix;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzb:Lcom/google/android/gms/internal/ads/zzix;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzix;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadm;->zza:I

    return-void
.end method

.method private final zzs(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzb:Lcom/google/android/gms/internal/ads/zzix;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzix;->zzb(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzadm;->zza:I

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final zzx(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzb:Lcom/google/android/gms/internal/ads/zzix;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzix;->zzc(I)I

    move-result v0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    :goto_0
    return v0

    :cond_1
    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final zzb(IIZ)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzm(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v2

    sub-int/2addr p1, v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p2

    .line 4
    :goto_0
    invoke-virtual {v2, p1, v4, p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzb(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int/2addr v1, p1

    return v1

    .line 5
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzadm;->zzs(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzadm;->zzs(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_3
    if-ne p2, v3, :cond_4

    .line 10
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzadm;->zze(Z)I

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public final zzc(IIZ)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzm(I)I

    move-result p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result p3

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    sub-int/2addr p1, p3

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzc(IIZ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/2addr p3, p1

    return p3

    .line 5
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzx(IZ)I

    move-result p1

    :goto_0
    if-eq p1, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzx(IZ)I

    move-result p1

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzd(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_2
    return v0
.end method

.method public final zzd(Z)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadm;->zza:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzb:Lcom/google/android/gms/internal/ads/zzix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzix;->zzd()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzx(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 4
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzd(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final zze(Z)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadm;->zza:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadm;->zzb:Lcom/google/android/gms/internal/ads/zzix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzix;->zze()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzs(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 4
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzm(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzp(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 5
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzr(I)Ljava/lang/Object;

    move-result-object p1

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/ads/zzaip;->zza:Ljava/lang/Object;

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    .line 9
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 8
    :cond_0
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    .line 10
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzn:I

    .line 11
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzaip;->zzo:I

    return-object p2
.end method

.method public final zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzl(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzp(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v3

    sub-int/2addr p1, v2

    .line 5
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    .line 6
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzr(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 8
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 9
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final zzi(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzn(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzp(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :cond_2
    return v1
.end method

.method public final zzj(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzadm;->zzl(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzp(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadm;->zzr(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zzl(I)I
.end method

.method protected abstract zzm(I)I
.end method

.method protected abstract zzn(Ljava/lang/Object;)I
.end method

.method protected abstract zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;
.end method

.method protected abstract zzp(I)I
.end method

.method protected abstract zzq(I)I
.end method

.method protected abstract zzr(I)Ljava/lang/Object;
.end method

.method public final zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzn(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzq(I)I

    move-result v2

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzo(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    .line 6
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    .line 7
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzain;->zzb:Ljava/lang/Object;

    return-object p2
.end method
