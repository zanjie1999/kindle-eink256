.class public final Lcom/google/android/gms/internal/ads/zzbep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbdf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbdd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbhx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbog;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcde;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbzn;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzboh;

.field private zzh:Lcom/google/android/gms/internal/ads/zzcat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdf;Lcom/google/android/gms/internal/ads/zzbdd;Lcom/google/android/gms/internal/ads/zzbhx;Lcom/google/android/gms/internal/ads/zzbog;Lcom/google/android/gms/internal/ads/zzcde;Lcom/google/android/gms/internal/ads/zzbzn;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbep;->zza:Lcom/google/android/gms/internal/ads/zzbdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzb:Lcom/google/android/gms/internal/ads/zzbdd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzc:Lcom/google/android/gms/internal/ads/zzbhx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzd:Lcom/google/android/gms/internal/ads/zzbog;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbep;->zze:Lcom/google/android/gms/internal/ads/zzcde;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzf:Lcom/google/android/gms/internal/ads/zzbzn;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzg:Lcom/google/android/gms/internal/ads/zzboh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzbdf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbep;->zza:Lcom/google/android/gms/internal/ads/zzbdf;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzbdd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzb:Lcom/google/android/gms/internal/ads/zzbdd;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzbog;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzd:Lcom/google/android/gms/internal/ads/zzbog;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzbzn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzf:Lcom/google/android/gms/internal/ads/zzbzn;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzbep;Lcom/google/android/gms/internal/ads/zzcat;)Lcom/google/android/gms/internal/ads/zzcat;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzh:Lcom/google/android/gms/internal/ads/zzcat;

    return-object p1
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzbep;)Lcom/google/android/gms/internal/ads/zzcat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzh:Lcom/google/android/gms/internal/ads/zzcat;

    return-object p0
.end method

.method static synthetic zzi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    .line 2
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    .line 3
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzd()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgm;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public final zzk(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbef;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbef;-><init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfn;

    return-object p1
.end method

.method public final zzl(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzbfj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbeh;-><init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfj;

    return-object p1
.end method

.method public final zzm(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbml;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbel;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbel;-><init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbml;

    return-object p1
.end method

.method public final zzp(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbzq;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdv;-><init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 6
    :goto_0
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbzq;

    return-object p1
.end method

.method public final zzq(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzcfn;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfn;

    return-object p1
.end method

.method public final zzr(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzbze;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdz;-><init>(Lcom/google/android/gms/internal/ads/zzbep;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbeq;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbze;

    return-object p1
.end method
