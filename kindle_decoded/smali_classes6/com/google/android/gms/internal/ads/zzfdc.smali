.class final synthetic Lcom/google/android/gms/internal/ads/zzfdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfde;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfde;Lcom/google/android/gms/internal/ads/zzfcw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zza:Lcom/google/android/gms/internal/ads/zzfde;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zza:Lcom/google/android/gms/internal/ads/zzfde;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdc;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfde;->zzc(Lcom/google/android/gms/internal/ads/zzfcw;Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzfsm;

    const/4 p1, 0x0

    throw p1
.end method
