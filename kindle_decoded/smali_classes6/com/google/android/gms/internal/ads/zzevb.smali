.class final synthetic Lcom/google/android/gms/internal/ads/zzevb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzevc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzevc;Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevb;->zza:Lcom/google/android/gms/internal/ads/zzevc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevb;->zzb:Lcom/google/android/gms/internal/ads/zzbcz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevb;->zza:Lcom/google/android/gms/internal/ads/zzevc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevb;->zzb:Lcom/google/android/gms/internal/ads/zzbcz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzevc;->zzc:Lcom/google/android/gms/internal/ads/zzevf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzevf;->zze(Lcom/google/android/gms/internal/ads/zzevf;)Lcom/google/android/gms/internal/ads/zzevv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzevv;->zzbD(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
