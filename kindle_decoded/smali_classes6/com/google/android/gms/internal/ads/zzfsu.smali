.class public final Lcom/google/android/gms/internal/ads/zzfsu;
.super Lcom/google/android/gms/internal/ads/zzfqw$zzj;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzfqw$zzj<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqw$zzj;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfsu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzfsu<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsu;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzp(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzq(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzq(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
