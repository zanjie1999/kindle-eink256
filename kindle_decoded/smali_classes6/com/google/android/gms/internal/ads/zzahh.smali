.class public final Lcom/google/android/gms/internal/ads/zzahh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzalc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzahh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzalc;->zza(I)Lcom/google/android/gms/internal/ads/zzalc;

    return-object p0
.end method

.method public final zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzalc;->zza(I)Lcom/google/android/gms/internal/ads/zzalc;

    :cond_0
    return-object p0
.end method

.method public final varargs zzc([I)Lcom/google/android/gms/internal/ads/zzahh;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzalc;->zza(I)Lcom/google/android/gms/internal/ads/zzalc;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzahi;)Lcom/google/android/gms/internal/ads/zzahh;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzahi;->zza(Lcom/google/android/gms/internal/ads/zzahi;)Lcom/google/android/gms/internal/ads/zzale;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzale;->zza()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzale;->zzb(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzalc;->zza(I)Lcom/google/android/gms/internal/ads/zzalc;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzahi;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahh;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalc;->zzb()Lcom/google/android/gms/internal/ads/zzale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(Lcom/google/android/gms/internal/ads/zzale;Lcom/google/android/gms/internal/ads/zzahm;)V

    return-object v0
.end method
