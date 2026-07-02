.class final synthetic Lcom/google/android/gms/internal/ads/zzcyg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcyj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyj;Lcom/google/android/gms/internal/ads/zzfcj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyg;->zza:Lcom/google/android/gms/internal/ads/zzcyj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyg;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyg;->zza:Lcom/google/android/gms/internal/ads/zzcyj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyg;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzj(Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
