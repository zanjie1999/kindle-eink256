.class public final Lcom/google/android/gms/internal/ads/zzelv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdmx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeli;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdbf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmx;Lcom/google/android/gms/internal/ads/zzffc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zza:Lcom/google/android/gms/internal/ads/zzdmx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeli;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeli;-><init>(Lcom/google/android/gms/internal/ads/zzffc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzeli;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzelv;->zza:Lcom/google/android/gms/internal/ads/zzdmx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdmx;->zze()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelu;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzelu;-><init>(Lcom/google/android/gms/internal/ads/zzeli;Lcom/google/android/gms/internal/ads/zzbsg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzc:Lcom/google/android/gms/internal/ads/zzdbf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzeli;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeli;->zze(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdkw;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelv;->zza:Lcom/google/android/gms/internal/ads/zzdmx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzeli;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeli;->zzc()Lcom/google/android/gms/internal/ads/zzbfa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdkw;-><init>(Lcom/google/android/gms/internal/ads/zzdmx;Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzeli;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzeli;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdcq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzb:Lcom/google/android/gms/internal/ads/zzeli;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzdbf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelv;->zzc:Lcom/google/android/gms/internal/ads/zzdbf;

    return-object v0
.end method
