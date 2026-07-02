.class public final Lcom/google/android/gms/internal/ads/zzbyo;
.super Lcom/google/android/gms/internal/ads/zzbyp;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbyp;",
        "Lcom/google/android/gms/internal/ads/zzbpr<",
        "Lcom/google/android/gms/internal/ads/zzcml;",
        ">;"
    }
.end annotation


# instance fields
.field zza:Landroid/util/DisplayMetrics;

.field zzb:I

.field zzc:I

.field zzd:I

.field zze:I

.field zzf:I

.field zzg:I

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzi:Landroid/content/Context;

.field private final zzj:Landroid/view/WindowManager;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzbiv;

.field private zzl:F

.field private zzm:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbiv;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;-><init>(Lcom/google/android/gms/internal/ads/zzcml;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzg:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzk:Lcom/google/android/gms/internal/ads/zzbiv;

    const-string p1, "window"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzj:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    new-instance p1, Landroid/util/DisplayMetrics;

    .line 2
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzj:Landroid/view/WindowManager;

    .line 3
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Landroid/util/DisplayMetrics;

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Landroid/util/DisplayMetrics;

    .line 5
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzl:F

    .line 6
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzm:I

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcgm;->zzq(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzb:I

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcgm;->zzq(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzc:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzj()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzT(Landroid/app/Activity;)[I

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcgm;->zzq(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzd:I

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zza:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgm;->zzq(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zze:I

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zze:I

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcob;->zzg()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzg:I

    goto :goto_2

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 15
    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzcml;->measure(II)V

    .line 14
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzd:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zze:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzl:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzm:I

    move-object v1, p0

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbyp;->zzk(IIIIFI)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbyn;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzk:Lcom/google/android/gms/internal/ads/zzbiv;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    .line 17
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "tel:"

    .line 18
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbiv;->zzc(Landroid/content/Intent;)Z

    move-result v1

    .line 20
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbyn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzk:Lcom/google/android/gms/internal/ads/zzbiv;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 21
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "sms:"

    .line 22
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbiv;->zzc(Landroid/content/Intent;)Z

    move-result v1

    .line 24
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzf(Z)Lcom/google/android/gms/internal/ads/zzbyn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzk:Lcom/google/android/gms/internal/ads/zzbiv;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbiv;->zzb()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzh(Z)Lcom/google/android/gms/internal/ads/zzbyn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzk:Lcom/google/android/gms/internal/ads/zzbiv;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbiv;->zza()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzi(Z)Lcom/google/android/gms/internal/ads/zzbyn;

    .line 27
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbyn;->zzj(Z)Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zza(Lcom/google/android/gms/internal/ads/zzbyn;)Z

    move-result v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzb(Lcom/google/android/gms/internal/ads/zzbyn;)Z

    move-result v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzc(Lcom/google/android/gms/internal/ads/zzbyn;)Z

    move-result v3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzd(Lcom/google/android/gms/internal/ads/zzbyn;)Z

    move-result v4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zze(Lcom/google/android/gms/internal/ads/zzbyn;)Z

    move-result p1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 28
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "sms"

    .line 29
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "tel"

    .line 30
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "calendar"

    .line 31
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "storePicture"

    .line 32
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "inlineVideo"

    .line 33
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Error occurred while obtaining the MRAID capabilities."

    .line 34
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_3
    const-string v1, "onDeviceFeaturesReceived"

    .line 35
    invoke-interface {v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzbsi;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 36
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzcml;->getLocationOnScreen([I)V

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Landroid/content/Context;I)I

    move-result v0

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Landroid/content/Context;I)I

    move-result p2

    .line 39
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzbyo;->zzb(II)V

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzm(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 42
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyp;->zzg(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzV(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcob;->zzg()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcml;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcml;->getHeight()I

    move-result v3

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjl;->zzM:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcob;->zzb:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 10
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcob;->zza:I

    goto :goto_2

    :cond_4
    move v1, v3

    .line 12
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:I

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzi:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzg:I

    :cond_6
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzg:I

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyp;->zzi(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyo;->zzh:Lcom/google/android/gms/internal/ads/zzcml;

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcml;->zzR()Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcnz;->zzE(II)V

    return-void
.end method
