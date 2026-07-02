.class final Lcom/google/android/gms/internal/ads/zzaxa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaws;

.field final synthetic zzc:Landroid/webkit/WebView;

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzaxc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaxc;Lcom/google/android/gms/internal/ads/zzaws;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zze:Lcom/google/android/gms/internal/ads/zzaxc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzb:Lcom/google/android/gms/internal/ads/zzaws;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzc:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzawz;-><init>(Lcom/google/android/gms/internal/ads/zzaxa;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zza:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzc:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzc:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zza:Landroid/webkit/ValueCallback;

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zza:Landroid/webkit/ValueCallback;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawz;

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawz;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
