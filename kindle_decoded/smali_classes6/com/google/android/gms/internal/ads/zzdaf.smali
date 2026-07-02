.class final Lcom/google/android/gms/internal/ads/zzdaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcq;
.implements Lcom/google/android/gms/internal/ads/zzdbx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbzv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzbzv;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zzc:Lcom/google/android/gms/internal/ads/zzbzv;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzb(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzbo(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzZ:Lcom/google/android/gms/internal/ads/zzbzw;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbzw;->zza:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzezz;->zzZ:Lcom/google/android/gms/internal/ads/zzbzw;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbzw;->zzb:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaf;->zzb:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzezz;->zzZ:Lcom/google/android/gms/internal/ads/zzbzw;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbzw;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
