.class final Lcom/google/android/gms/internal/ads/zzasf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzasl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasl;->zzj(Lcom/google/android/gms/internal/ads/zzasl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasl;->zzi(Lcom/google/android/gms/internal/ads/zzasl;)Lcom/google/android/gms/internal/ads/zzaso;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzatc;->zzbh(Lcom/google/android/gms/internal/ads/zzatd;)V

    :cond_0
    return-void
.end method
