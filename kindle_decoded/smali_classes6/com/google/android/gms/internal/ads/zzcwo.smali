.class final synthetic Lcom/google/android/gms/internal/ads/zzcwo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcwp;

.field private final zzb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwp;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zza:Lcom/google/android/gms/internal/ads/zzcwp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zza:Lcom/google/android/gms/internal/ads/zzcwp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zzb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwp;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method
