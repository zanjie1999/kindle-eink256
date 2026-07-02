.class final synthetic Lcom/google/android/gms/internal/ads/zzcl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzahc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzahc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcl;->zzb:Lcom/google/android/gms/internal/ads/zzahc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcl;->zzb:Lcom/google/android/gms/internal/ads/zzahc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzda;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzda;->zzf(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzahc;)V

    return-void
.end method
