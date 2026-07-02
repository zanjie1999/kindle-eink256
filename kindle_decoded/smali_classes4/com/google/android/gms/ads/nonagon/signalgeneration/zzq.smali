.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

.field private final zzb:[Lcom/google/android/gms/internal/ads/zzdrh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;[Lcom/google/android/gms/internal/ads/zzdrh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;->zzb:[Lcom/google/android/gms/internal/ads/zzdrh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;->zzb:[Lcom/google/android/gms/internal/ads/zzdrh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzz([Lcom/google/android/gms/internal/ads/zzdrh;)V

    return-void
.end method
