.class final synthetic Lcom/google/android/gms/internal/ads/zzexy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeyb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexy;->zza:Lcom/google/android/gms/internal/ads/zzeyb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexy;->zza:Lcom/google/android/gms/internal/ads/zzeyb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyb;->zzc:Lcom/google/android/gms/internal/ads/zzeyc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeyc;->zze(Lcom/google/android/gms/internal/ads/zzeyc;)Lcom/google/android/gms/internal/ads/zzezc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzezc;->zzf()V

    return-void
.end method
