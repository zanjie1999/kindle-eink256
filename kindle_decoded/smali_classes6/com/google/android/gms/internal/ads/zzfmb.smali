.class final Lcom/google/android/gms/internal/ads/zzfmb;
.super Lcom/google/android/gms/internal/ads/zzfme;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfmc;Lcom/google/android/gms/internal/ads/zzfmg;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzfme;-><init>(Lcom/google/android/gms/internal/ads/zzfmg;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final zzc(I)I
    .locals 1

    add-int/lit16 p1, p1, 0xfa0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzb:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzd(I)I
    .locals 0

    return p1
.end method
