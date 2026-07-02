.class public Lcom/google/android/gms/internal/ads/zzatk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzatf;

.field protected final zzb:[I

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzanm;

.field private zzd:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzatf;[I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zza:Lcom/google/android/gms/internal/ads/zzatf;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzanm;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzc:[Lcom/google/android/gms/internal/ads/zzanm;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzc:[Lcom/google/android/gms/internal/ads/zzanm;

    aget v5, p2, v3

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzatf;->zza(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzc:[Lcom/google/android/gms/internal/ads/zzanm;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzati;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzati;-><init>(Lcom/google/android/gms/internal/ads/zzatj;)V

    .line 2
    invoke-static {p2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-array p2, v1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzb:[I

    :goto_1
    if-gtz v2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzb:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzc:[Lcom/google/android/gms/internal/ads/zzanm;

    .line 3
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzatf;->zzb(Lcom/google/android/gms/internal/ads/zzanm;)I

    move-result v0

    aput v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 4
    :cond_2
    throw v0
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzatk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zza:Lcom/google/android/gms/internal/ads/zzatf;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatk;->zza:Lcom/google/android/gms/internal/ads/zzatf;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzb:[I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatk;->zzb:[I

    .line 2
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzd:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zza:Lcom/google/android/gms/internal/ads/zzatf;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzb:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzd:I

    :cond_0
    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzatf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zza:Lcom/google/android/gms/internal/ads/zzatf;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzb:[I

    array-length v0, v0

    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzanm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzc:[Lcom/google/android/gms/internal/ads/zzanm;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzd(I)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzb:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method
