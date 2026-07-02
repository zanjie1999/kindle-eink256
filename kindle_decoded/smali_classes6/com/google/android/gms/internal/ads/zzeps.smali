.class final synthetic Lcom/google/android/gms/internal/ads/zzeps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzept;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzept;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeps;->zza:Lcom/google/android/gms/internal/ads/zzept;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeps;->zza:Lcom/google/android/gms/internal/ads/zzept;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzept;->zzb()Lcom/google/android/gms/internal/ads/zzepu;

    move-result-object v0

    return-object v0
.end method
