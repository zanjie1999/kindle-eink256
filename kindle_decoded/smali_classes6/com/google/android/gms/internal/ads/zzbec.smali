.class final Lcom/google/android/gms/internal/ads/zzbec;
.super Lcom/google/android/gms/internal/ads/zzbeq;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbeq<",
        "Lcom/google/android/gms/internal/ads/zzbfn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbdl;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbvg;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzbep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbec;->zze:Lcom/google/android/gms/internal/ads/zzbep;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbec;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzb:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzd:Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbeq;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbec;->zza:Landroid/content/Context;

    const-string v1, "banner"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbep;->zzi(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbid;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbid;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbec;->zze:Lcom/google/android/gms/internal/ads/zzbep;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbep;->zza(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzbdf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbec;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzb:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzd:Lcom/google/android/gms/internal/ads/zzbvg;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbdf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfx;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbec;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzb:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbec;->zzd:Lcom/google/android/gms/internal/ads/zzbvg;

    const v6, 0xcbe6bb0

    move-object v1, p1

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbfx;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object p1

    return-object p1
.end method
