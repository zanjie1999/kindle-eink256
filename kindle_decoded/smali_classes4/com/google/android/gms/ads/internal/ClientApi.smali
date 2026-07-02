.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/zzbfw;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p4

    .line 3
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcoj;->zzl()Lcom/google/android/gms/internal/ads/zzewl;

    move-result-object p4

    .line 4
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzewl;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzewl;

    .line 5
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/zzewl;->zzb(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzewl;

    .line 6
    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/zzewl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzewl;

    .line 7
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzewl;->zza()Lcom/google/android/gms/internal/ads/zzewm;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzewm;->zza()Lcom/google/android/gms/internal/ads/zzeko;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p4

    .line 3
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcoj;->zzq()Lcom/google/android/gms/internal/ads/zzeye;

    move-result-object p4

    .line 4
    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzeye;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzeye;

    .line 5
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/ads/zzeye;->zzb(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/zzeye;

    .line 6
    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/ads/zzeye;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeye;

    .line 7
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzeye;->zza()Lcom/google/android/gms/internal/ads/zzeyf;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeyf;->zza()Lcom/google/android/gms/internal/ads/zzelq;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbfj;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p3

    new-instance p4, Lcom/google/android/gms/internal/ads/zzekl;

    .line 3
    invoke-direct {p4, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzekl;-><init>(Lcom/google/android/gms/internal/ads/zzcoj;Landroid/content/Context;Ljava/lang/String;)V

    return-object p4
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbml;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnh;

    const v1, 0xcbe6bb0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdnh;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzccc;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzt()Lcom/google/android/gms/internal/ads/zzezs;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzezs;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzezs;

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzezs;->zza()Lcom/google/android/gms/internal/ads/zzezt;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzezt;->zza()Lcom/google/android/gms/internal/ads/zzezw;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbzq;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    .line 9
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzu;

    .line 5
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzu;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    move-object v0, v1

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzab;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzab;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 7
    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzaa;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 8
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/ads/zzbge;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzb(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzj()Lcom/google/android/gms/internal/ads/zzcrf;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgz;

    const v1, 0xcbe6bb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgz;-><init>(IIZZ)V

    new-instance p4, Lcom/google/android/gms/ads/internal/zzs;

    .line 3
    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgz;)V

    return-object p4
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbmr;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnf;

    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdnf;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzccs;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcoj;->zzt()Lcom/google/android/gms/internal/ads/zzezs;

    move-result-object p3

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzezs;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzezs;

    .line 5
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzezs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzezs;

    .line 6
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzezs;->zza()Lcom/google/android/gms/internal/ads/zzezt;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzezt;->zzb()Lcom/google/android/gms/internal/ads/zzezq;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzo()Lcom/google/android/gms/internal/ads/zzeux;

    move-result-object p2

    .line 4
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzeux;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeux;

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzeux;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzeux;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzeux;->zza()Lcom/google/android/gms/internal/ads/zzeuy;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzdC:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p5, p2, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeuy;->zzb()Lcom/google/android/gms/internal/ads/zzewd;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeuy;->zza()Lcom/google/android/gms/internal/ads/zzeuv;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcfn;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzv()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbze;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoj;->zzx()Lcom/google/android/gms/internal/ads/zzedy;

    move-result-object p1

    return-object p1
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvg;ILcom/google/android/gms/internal/ads/zzbqm;)Lcom/google/android/gms/internal/ads/zzbqp;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcoj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoj;->zzC()Lcom/google/android/gms/internal/ads/zzdwq;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdwq;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdwq;

    .line 5
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/ads/zzdwq;->zzb(Lcom/google/android/gms/internal/ads/zzbqm;)Lcom/google/android/gms/internal/ads/zzdwq;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdwq;->zza()Lcom/google/android/gms/internal/ads/zzdwr;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdwr;->zzc()Lcom/google/android/gms/internal/ads/zzdwo;

    move-result-object p1

    return-object p1
.end method
