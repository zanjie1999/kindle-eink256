.class final Lcom/google/android/gms/internal/ads/zzbui;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzchn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzchl;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbtm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbuk;Lcom/google/android/gms/internal/ads/zzchl;Lcom/google/android/gms/internal/ads/zzbtm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbui;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbui;->zzb:Lcom/google/android/gms/internal/ads/zzbtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbui;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtv;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbui;->zzb:Lcom/google/android/gms/internal/ads/zzbtm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtm;->zzb()V

    return-void
.end method
