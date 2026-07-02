.class public final Lcom/google/android/gms/internal/ads/zzffp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzffc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzffk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzffm;Lcom/google/android/gms/internal/ads/zzffk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffp;->zza:Lcom/google/android/gms/internal/ads/zzffm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffp;->zzb:Lcom/google/android/gms/internal/ads/zzffk;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzffb;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzffb;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffp;->zza:Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzj()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffp;->zzb:Lcom/google/android/gms/internal/ads/zzffk;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzffk;->zza(Ljava/util/Map;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffm;->zza(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
