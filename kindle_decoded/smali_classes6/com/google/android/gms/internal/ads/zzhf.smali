.class public final Lcom/google/android/gms/internal/ads/zzhf;
.super Lcom/google/android/gms/internal/ads/zzo;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzo;-><init>(Lcom/google/android/gms/internal/ads/zzo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzo;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzo;-><init>(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzo;-><init>(Ljava/lang/Object;JI)V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhf;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhf;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Lcom/google/android/gms/internal/ads/zzo;)V

    return-object v0
.end method
