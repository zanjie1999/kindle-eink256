.class final Lcom/google/android/gms/internal/ads/zzfqw$zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfqw$zzl;


# instance fields
.field volatile next:Lcom/google/android/gms/internal/ads/zzfqw$zzl;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqw$zzl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqw$zzl;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzl;->zza:Lcom/google/android/gms/internal/ads/zzfqw$zzl;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqw;->zzg()Lcom/google/android/gms/internal/ads/zzfqw$zza;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzfqw$zzl;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
