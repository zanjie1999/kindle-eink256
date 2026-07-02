.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

.field private final zzb:[Lcom/google/android/gms/internal/ads/zzdrh;

.field private final zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;[Lcom/google/android/gms/internal/ads/zzdrh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb:[Lcom/google/android/gms/internal/ads/zzdrh;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb:[Lcom/google/android/gms/internal/ads/zzdrh;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzc:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrh;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzA([Lcom/google/android/gms/internal/ads/zzdrh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrh;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
