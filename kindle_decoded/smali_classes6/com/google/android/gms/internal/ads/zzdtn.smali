.class final synthetic Lcom/google/android/gms/internal/ads/zzdtn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzazj;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbbz;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zza:Lcom/google/android/gms/internal/ads/zzazj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzc:Lcom/google/android/gms/internal/ads/zzbbz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbao;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zza:Lcom/google/android/gms/internal/ads/zzazj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzc:Lcom/google/android/gms/internal/ads/zzbbz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzd:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzg()Lcom/google/android/gms/internal/ads/zzazl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgga;->zzau()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzazk;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zza(Lcom/google/android/gms/internal/ads/zzazj;)Lcom/google/android/gms/internal/ads/zzazk;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzbao;->zzh(Lcom/google/android/gms/internal/ads/zzazk;)Lcom/google/android/gms/internal/ads/zzbao;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zze()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzau()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbag;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbag;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbag;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Lcom/google/android/gms/internal/ads/zzbag;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbao;->zzf(Lcom/google/android/gms/internal/ads/zzbag;)Lcom/google/android/gms/internal/ads/zzbao;

    .line 6
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzbao;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbao;

    return-void
.end method
