.class final synthetic Lcom/google/android/gms/internal/ads/zzemc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zza:Lcom/google/android/gms/internal/ads/zzeme;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zza:Lcom/google/android/gms/internal/ads/zzeme;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeme;->zzc:Lcom/google/android/gms/internal/ads/zzemf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzemf;->zzd(Lcom/google/android/gms/internal/ads/zzemf;)Lcom/google/android/gms/internal/ads/zzelv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zzd()Lcom/google/android/gms/internal/ads/zzdcq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdcq;->zzf()V

    return-void
.end method
