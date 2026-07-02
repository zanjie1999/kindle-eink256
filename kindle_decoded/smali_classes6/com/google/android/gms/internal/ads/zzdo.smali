.class final synthetic Lcom/google/android/gms/internal/ads/zzdo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdp;

.field private final zzb:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdp;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdo;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdo;->zzb:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdo;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdo;->zzb:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdp;->zzk(Ljava/lang/Exception;)V

    return-void
.end method
