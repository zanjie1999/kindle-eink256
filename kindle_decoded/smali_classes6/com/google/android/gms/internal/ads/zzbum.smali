.class final synthetic Lcom/google/android/gms/internal/ads/zzbum;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzchn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbum;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbum;->zza:Lcom/google/android/gms/internal/ads/zzchl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtv;

    const-string v2, "Cannot get Javascript Engine"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
