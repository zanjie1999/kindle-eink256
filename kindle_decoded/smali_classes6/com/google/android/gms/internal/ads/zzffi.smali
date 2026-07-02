.class public final Lcom/google/android/gms/internal/ads/zzffi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzffc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzffk;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfez;Lcom/google/android/gms/internal/ads/zzffm;Lcom/google/android/gms/internal/ads/zzffk;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffi;->zzc:Lcom/google/android/gms/internal/ads/zzfez;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffi;->zza:Lcom/google/android/gms/internal/ads/zzffm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffi;->zzb:Lcom/google/android/gms/internal/ads/zzffk;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzffb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffi;->zzc:Lcom/google/android/gms/internal/ads/zzfez;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzffi;->zzb(Lcom/google/android/gms/internal/ads/zzffb;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfez;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzffb;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffi;->zza:Lcom/google/android/gms/internal/ads/zzffm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzj()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffi;->zzb:Lcom/google/android/gms/internal/ads/zzffk;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzffk;->zza(Ljava/util/Map;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzffm;->zza(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
