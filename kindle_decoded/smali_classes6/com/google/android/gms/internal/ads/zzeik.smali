.class final synthetic Lcom/google/android/gms/internal/ads/zzeik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcnx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsw;Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeik;->zza:Lcom/google/android/gms/internal/ads/zzdsw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeik;->zza:Lcom/google/android/gms/internal/ads/zzdsw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzb()V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzL()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzR()Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcnz;->zzj()V

    return-void
.end method
