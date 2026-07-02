.class final synthetic Lcom/google/android/gms/internal/ads/zzbjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbjj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbjd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbjj;Lcom/google/android/gms/internal/ads/zzbjd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zza:Lcom/google/android/gms/internal/ads/zzbjj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zzb:Lcom/google/android/gms/internal/ads/zzbjd;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zza:Lcom/google/android/gms/internal/ads/zzbjj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zzb:Lcom/google/android/gms/internal/ads/zzbjd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zze(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
