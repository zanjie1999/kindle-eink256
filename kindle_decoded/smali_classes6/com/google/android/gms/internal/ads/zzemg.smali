.class final synthetic Lcom/google/android/gms/internal/ads/zzemg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzemh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzemh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemg;->zza:Lcom/google/android/gms/internal/ads/zzemh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemg;->zza:Lcom/google/android/gms/internal/ads/zzemh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzemh;->zzb()Lcom/google/android/gms/internal/ads/zzemi;

    move-result-object v0

    return-object v0
.end method
