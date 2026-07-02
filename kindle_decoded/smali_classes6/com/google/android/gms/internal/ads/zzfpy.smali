.class final Lcom/google/android/gms/internal/ads/zzfpy;
.super Lcom/google/android/gms/internal/ads/zzfoj;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfoj<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpy;->zza:Lcom/google/android/gms/internal/ads/zzfpz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfoj;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpy;->zza:Lcom/google/android/gms/internal/ads/zzfpz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpz;->zzq(Lcom/google/android/gms/internal/ads/zzfpz;)I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzflx;->zze(IILjava/lang/String;)I

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpy;->zza:Lcom/google/android/gms/internal/ads/zzfpz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpz;->zzp(Lcom/google/android/gms/internal/ads/zzfpz;)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpy;->zza:Lcom/google/android/gms/internal/ads/zzfpz;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfpz;->zzp(Lcom/google/android/gms/internal/ads/zzfpz;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpy;->zza:Lcom/google/android/gms/internal/ads/zzfpz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpz;->zzq(Lcom/google/android/gms/internal/ads/zzfpz;)I

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
