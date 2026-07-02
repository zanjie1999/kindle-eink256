.class final synthetic Lcom/google/android/gms/internal/ads/zzcnj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcnl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnj;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnj;->zza:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcne;->zzaS()Lcom/google/android/gms/internal/ads/zzcms;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnz;->zzF(Landroid/net/Uri;)V

    return-void
.end method
