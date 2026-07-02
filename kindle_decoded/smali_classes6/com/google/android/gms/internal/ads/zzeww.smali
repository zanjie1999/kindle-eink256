.class final synthetic Lcom/google/android/gms/internal/ads/zzeww;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzexa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzexa;Lcom/google/android/gms/internal/ads/zzdal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeww;->zza:Lcom/google/android/gms/internal/ads/zzexa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeww;->zzb:Lcom/google/android/gms/internal/ads/zzdal;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeww;->zza:Lcom/google/android/gms/internal/ads/zzexa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeww;->zzb:Lcom/google/android/gms/internal/ads/zzdal;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzexj;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzexa;->zzb(Lcom/google/android/gms/internal/ads/zzdal;Lcom/google/android/gms/internal/ads/zzexj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
