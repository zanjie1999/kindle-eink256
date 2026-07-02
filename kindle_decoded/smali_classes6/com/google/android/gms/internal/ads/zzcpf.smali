.class public final Lcom/google/android/gms/internal/ads/zzcpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzcbu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgln;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcbu;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zza:Lcom/google/android/gms/internal/ads/zzgln;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoo;->zza()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/internal/ads/zzbtx;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgz;->zza()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbtx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbud;->zza:Lcom/google/android/gms/internal/ads/zzbua;

    const-string v3, "google.afma.request.getAdDictionary"

    .line 4
    invoke-virtual {v1, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzbug;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)Lcom/google/android/gms/internal/ads/zzbtw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/internal/ads/zzbtx;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgz;->zza()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbtx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbud;->zza:Lcom/google/android/gms/internal/ads/zzbua;

    const-string v3, "google.afma.sdkConstants.getSdkConstants"

    .line 7
    invoke-virtual {v1, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzbug;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)Lcom/google/android/gms/internal/ads/zzbtw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcbt;

    .line 8
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcbt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtw;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcpf;->zza()Lcom/google/android/gms/internal/ads/zzcbu;

    move-result-object v0

    return-object v0
.end method
