.class final synthetic Lcom/google/android/gms/internal/ads/zzckq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zza:Lcom/google/android/gms/internal/ads/zzcks;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zza:Lcom/google/android/gms/internal/ads/zzcks;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcks;->zze()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
