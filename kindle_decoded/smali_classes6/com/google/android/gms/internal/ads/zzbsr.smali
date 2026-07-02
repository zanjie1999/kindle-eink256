.class final synthetic Lcom/google/android/gms/internal/ads/zzbsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbsv;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbsv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsr;->zza:Lcom/google/android/gms/internal/ads/zzbsv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsr;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsr;->zza:Lcom/google/android/gms/internal/ads/zzbsv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsr;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbsv;->zzn(Ljava/lang/String;)V

    return-void
.end method
