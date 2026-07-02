.class public final Lcom/google/android/gms/internal/ads/zzctm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbtz<",
        "Lcom/google/android/gms/internal/ads/zzctp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzavz;

.field private final zzc:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctm;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzb:Lcom/google/android/gms/internal/ads/zzavz;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzc:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzctp;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzctp;->zzf:Lcom/google/android/gms/internal/ads/zzawc;

    if-nez v2, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    .line 4
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_3

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzb:Lcom/google/android/gms/internal/ads/zzavz;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzavz;->zzc()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 6
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzawc;->zza:Z

    new-instance v4, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzb:Lcom/google/android/gms/internal/ads/zzavz;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzavz;->zzb()Ljava/lang/String;

    move-result-object v5

    const-string v6, "afmaVersion"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzb:Lcom/google/android/gms/internal/ads/zzavz;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzavz;->zzc()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "activeViewJSON"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzctp;->zzd:J

    const-string v8, "timestamp"

    .line 10
    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzb:Lcom/google/android/gms/internal/ads/zzavz;

    .line 11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzavz;->zza()Ljava/lang/String;

    move-result-object v6

    const-string v7, "adFormat"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzb:Lcom/google/android/gms/internal/ads/zzavz;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzavz;->zzd()Ljava/lang/String;

    move-result-object v6

    const-string v7, "hashCode"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "isMraid"

    .line 13
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    iget-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzctp;->zzc:Z

    const-string v7, "isStopped"

    .line 14
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    iget-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzctp;->zzb:Z

    const-string v7, "isPaused"

    .line 15
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzb:Lcom/google/android/gms/internal/ads/zzavz;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzavz;->zze()Z

    move-result v6

    const-string v7, "isNative"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzc:Landroid/os/PowerManager;

    .line 17
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    goto :goto_0

    .line 27
    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctm;->zzc:Landroid/os/PowerManager;

    .line 18
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    :goto_0
    const-string v7, "isScreenOn"

    .line 19
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzae;->zzd()Z

    move-result v6

    const-string v7, "appMuted"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzae;->zzb()F

    move-result v6

    float-to-double v6, v6

    const-string v8, "appVolume"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctm;->zza:Landroid/content/Context;

    .line 22
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzae;->zze(Landroid/content/Context;)F

    move-result v6

    float-to-double v6, v6

    const-string v8, "deviceVolume"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 23
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbjl;->zzdY:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzctm;->zza:Landroid/content/Context;

    .line 25
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    .line 26
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    const-string v6, "audioMode"

    .line 28
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    .line 29
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzctm;->zza:Landroid/content/Context;

    const-string v7, "window"

    .line 30
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 31
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 32
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 33
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzctm;->zza:Landroid/content/Context;

    .line 34
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzb:I

    const-string v7, "windowVisibility"

    .line 35
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "isAttachedToWindow"

    .line 36
    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    const-string v8, "top"

    .line 37
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    const-string v9, "bottom"

    .line 38
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    const-string v10, "left"

    .line 39
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    const-string v11, "right"

    .line 40
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "viewBox"

    .line 41
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzd:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 42
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzd:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 43
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzd:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 44
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzd:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 45
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "adBox"

    .line 46
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zze:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 47
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zze:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 48
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zze:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 49
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zze:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 50
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "globalVisibleBox"

    .line 51
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzf:Z

    const-string v7, "globalVisibleBoxVisible"

    .line 52
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzg:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 53
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzg:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 54
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzg:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 55
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzg:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 56
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "localVisibleBox"

    .line 57
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzh:Z

    const-string v7, "localVisibleBoxVisible"

    .line 58
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 59
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 60
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 61
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 62
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "hitBox"

    .line 63
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    const-string v7, "screenDensity"

    .line 64
    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzctp;->zza:Z

    const-string v5, "isVisible"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzaU:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 67
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lorg/json/JSONArray;

    .line 68
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawc;->zzk:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 69
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    new-instance v6, Lorg/json/JSONObject;

    .line 70
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 71
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 72
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 73
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 74
    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 70
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_4
    const-string v2, "scrollableContainerBoxes"

    .line 75
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzctp;->zze:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "doneReasonCode"

    const-string v2, "u"

    .line 77
    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    move-object p1, v4

    .line 78
    :goto_3
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "units"

    .line 79
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1

    .line 6
    :cond_7
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Active view Info cannot be null."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzctp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzctm;->zza(Lcom/google/android/gms/internal/ads/zzctp;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
