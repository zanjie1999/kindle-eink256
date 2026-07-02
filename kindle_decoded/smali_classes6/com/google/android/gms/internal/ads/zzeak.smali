.class final synthetic Lcom/google/android/gms/internal/ads/zzeak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcbj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeak;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzb:Lcom/google/android/gms/internal/ads/zzcbj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeak;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeak;->zzb:Lcom/google/android/gms/internal/ads/zzcbj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdym;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgln;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeao;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzeao;->zzc(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
