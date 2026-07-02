.class final synthetic Lcom/google/android/gms/internal/ads/zzbjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbjj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbjj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjh;->zza:Lcom/google/android/gms/internal/ads/zzbjj;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjh;->zza:Lcom/google/android/gms/internal/ads/zzbjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
