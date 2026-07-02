.class final synthetic Lcom/google/android/gms/internal/ads/zzdjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjh;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcml;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjh;-><init>(Lcom/google/android/gms/internal/ads/zzcml;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjh;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->destroy()V

    return-void
.end method
