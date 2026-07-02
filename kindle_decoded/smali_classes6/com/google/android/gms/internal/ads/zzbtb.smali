.class final synthetic Lcom/google/android/gms/internal/ads/zzbtb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbts;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbtr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zza:Lcom/google/android/gms/internal/ads/zzbts;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzb:Lcom/google/android/gms/internal/ads/zzbtr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzc:Lcom/google/android/gms/internal/ads/zzbsn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zza:Lcom/google/android/gms/internal/ads/zzbts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzb:Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzc:Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbts;->zzj(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V

    return-void
.end method
