.class final synthetic Lcom/google/android/gms/internal/ads/zzepg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeph;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepg;->zza:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepg;->zza:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeph;->zzb()Lcom/google/android/gms/internal/ads/zzepi;

    move-result-object v0

    return-object v0
.end method
