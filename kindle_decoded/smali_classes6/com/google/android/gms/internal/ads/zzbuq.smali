.class final synthetic Lcom/google/android/gms/internal/ads/zzbuq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbus;

.field private final zzb:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbus;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zza:Lcom/google/android/gms/internal/ads/zzbus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zza:Lcom/google/android/gms/internal/ads/zzbus;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbuq;->zzb:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtt;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbus;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
