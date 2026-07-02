.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zzc:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zzb:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zzc:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzC(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
