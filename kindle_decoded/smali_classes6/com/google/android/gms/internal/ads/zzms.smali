.class final synthetic Lcom/google/android/gms/internal/ads/zzms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmt;

.field private final zzb:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmt;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zza:Lcom/google/android/gms/internal/ads/zzmt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzms;->zzb:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zza:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzb:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmt;->zzk(Ljava/lang/Exception;)V

    return-void
.end method
