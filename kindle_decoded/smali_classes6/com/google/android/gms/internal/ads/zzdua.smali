.class final synthetic Lcom/google/android/gms/internal/ads/zzdua;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdua;->zza:Lcom/google/android/gms/internal/ads/zzfal;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbao;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdua;->zza:Lcom/google/android/gms/internal/ads/zzfal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzg()Lcom/google/android/gms/internal/ads/zzazl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgga;->zzau()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzazk;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzg()Lcom/google/android/gms/internal/ads/zzazl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazl;->zza()Lcom/google/android/gms/internal/ads/zzbad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgga;->zzau()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbac;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbac;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbac;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazk;->zzb(Lcom/google/android/gms/internal/ads/zzbac;)Lcom/google/android/gms/internal/ads/zzazk;

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbao;->zzh(Lcom/google/android/gms/internal/ads/zzazk;)Lcom/google/android/gms/internal/ads/zzbao;

    return-void
.end method
