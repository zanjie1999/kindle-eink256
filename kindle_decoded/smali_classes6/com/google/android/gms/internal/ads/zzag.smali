.class public abstract Lcom/google/android/gms/internal/ads/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaj;


# instance fields
.field private final zza:Z

.field private final zzb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzay;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzan;


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzag;->zza:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzb:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzb:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzc:I

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method protected final zzb(Lcom/google/android/gms/internal/ads/zzan;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzc:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzay;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzag;->zza:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzay;->zza(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzan;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzc(Lcom/google/android/gms/internal/ads/zzan;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzd:Lcom/google/android/gms/internal/ads/zzan;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzc:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzay;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzag;->zza:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzay;->zzb(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzan;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzd(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzd:Lcom/google/android/gms/internal/ads/zzan;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzag;->zzc:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzag;->zzb:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzay;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzag;->zza:Z

    .line 3
    invoke-interface {v2, p0, v0, v3, p1}, Lcom/google/android/gms/internal/ads/zzay;->zzc(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzan;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zze()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzd:Lcom/google/android/gms/internal/ads/zzan;

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzag;->zzc:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzag;->zzb:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzay;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzag;->zza:Z

    invoke-interface {v2, p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzay;->zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzan;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzd:Lcom/google/android/gms/internal/ads/zzan;

    return-void
.end method

.method public zzf()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
