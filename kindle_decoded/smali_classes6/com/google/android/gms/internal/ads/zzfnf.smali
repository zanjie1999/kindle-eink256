.class final Lcom/google/android/gms/internal/ads/zzfnf;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfng;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnf;->zza:Lcom/google/android/gms/internal/ads/zzfng;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnf;->zza:Lcom/google/android/gms/internal/ads/zzfng;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zzi()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnf;->zza:Lcom/google/android/gms/internal/ads/zzfng;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfng;->zzr(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnf;->zza:Lcom/google/android/gms/internal/ads/zzfng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfng;->zzo()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnf;->zza:Lcom/google/android/gms/internal/ads/zzfng;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zzg()I

    move-result v0

    return v0
.end method
