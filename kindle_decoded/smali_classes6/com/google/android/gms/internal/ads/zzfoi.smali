.class final Lcom/google/android/gms/internal/ads/zzfoi;
.super Lcom/google/android/gms/internal/ads/zzfoj;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfoj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfoj;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfoj;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzflx;->zze(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:Lcom/google/android/gms/internal/ads/zzfoj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfoi;->zzh(II)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    return-object p1
.end method

.method final zzb()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zzb()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzd()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzfoj;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzflx;->zzg(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:Lcom/google/android/gms/internal/ads/zzfoj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfoi;->zza:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzh(II)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    return-object p1
.end method
