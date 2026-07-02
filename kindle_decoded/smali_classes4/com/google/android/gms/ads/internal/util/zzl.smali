.class final Lcom/google/android/gms/ads/internal/util/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkh;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbkj;

.field final synthetic zzb:Landroid/content/Context;

.field final synthetic zzc:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/internal/ads/zzbkj;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbkj;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzc:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkj;->zzc()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 3
    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzglo;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzc:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zza:Lcom/google/android/gms/internal/ads/zzbkj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzl;->zzb:Landroid/content/Context;

    .line 6
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkj;->zzb(Landroid/app/Activity;)V

    return-void
.end method
