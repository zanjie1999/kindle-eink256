.class final Lcom/google/android/gms/internal/ads/zzash;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/io/IOException;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzasl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasl;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzash;->zzb:Lcom/google/android/gms/internal/ads/zzasl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzash;->zza:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzash;->zzb:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasl;->zzd(Lcom/google/android/gms/internal/ads/zzasl;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzash;->zza:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;->zzi(Ljava/io/IOException;)V

    return-void
.end method
