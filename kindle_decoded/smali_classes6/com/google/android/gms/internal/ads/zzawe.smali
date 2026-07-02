.class public final Lcom/google/android/gms/internal/ads/zzawe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final zzc:J


# instance fields
.field zza:Landroid/content/BroadcastReceiver;

.field final zzb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Landroid/content/Context;

.field private zze:Landroid/app/Application;

.field private final zzf:Landroid/view/WindowManager;

.field private final zzg:Landroid/os/PowerManager;

.field private final zzh:Landroid/app/KeyguardManager;

.field private zzi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/ads/zzawq;

.field private final zzk:Lcom/google/android/gms/ads/internal/util/zzcc;

.field private zzl:Z

.field private zzm:I

.field private final zzn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzawd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzo:Landroid/util/DisplayMetrics;

.field private final zzp:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzaR:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/zzawe;->zzc:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzcc;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzawe;->zzc:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzcc;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzk:Lcom/google/android/gms/ads/internal/util/zzcc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzm:I

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzn:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzd:Landroid/content/Context;

    const-string v0, "window"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzf:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzd:Landroid/content/Context;

    const-string v1, "power"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzg:Landroid/os/PowerManager;

    const-string v0, "keyguard"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzh:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzd:Landroid/content/Context;

    .line 7
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zze:Landroid/app/Application;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawq;

    .line 9
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzawq;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzj:Lcom/google/android/gms/internal/ads/zzawq;

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzo:Landroid/util/DisplayMetrics;

    new-instance p1, Landroid/graphics/Rect;

    .line 11
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzp:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzf:Landroid/view/WindowManager;

    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzp:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzf:Landroid/view/WindowManager;

    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzb:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzm(Landroid/view/View;)V

    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzb:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzad;->zzg(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzawe;->zzl(Landroid/view/View;)V

    .line 20
    :cond_3
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzawe;I)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    return-void
.end method

.method private final zzh()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzawa;-><init>(Lcom/google/android/gms/internal/ads/zzawe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzi(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzb:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzb:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzm:I

    :cond_2
    return-void
.end method

.method private final zzj(I)V
    .locals 32

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzn:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzb:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    new-instance v4, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v8, v0, [I

    new-array v0, v0, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    .line 8
    invoke-virtual {v3, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 9
    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 10
    :try_start_0
    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v14, "Failure getting view location."

    .line 12
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    aget v0, v8, v11

    .line 13
    iput v0, v4, Landroid/graphics/Rect;->left:I

    aget v8, v8, v10

    .line 14
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 16
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    move-object v8, v3

    goto :goto_1

    :cond_2
    move-object v8, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 17
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzaU:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 22
    :goto_2
    instance-of v15, v14, Landroid/view/View;

    if-eqz v15, :cond_5

    .line 23
    move-object v15, v14

    check-cast v15, Landroid/view/View;

    new-instance v11, Landroid/graphics/Rect;

    .line 24
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 25
    invoke-virtual {v15}, Landroid/view/View;->isScrollContainer()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 26
    invoke-virtual {v15, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 27
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_3
    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v11

    const-string v14, "PositionWatcher.getParentScrollViewRects"

    invoke-virtual {v11, v0, v14}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 19
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_5
    :goto_3
    move-object/from16 v31, v0

    const/16 v0, 0x8

    if-eqz v8, :cond_6

    .line 31
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    goto :goto_4

    :cond_6
    const/16 v11, 0x8

    :goto_4
    iget v14, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzm:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    move v11, v14

    .line 32
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzs;->zzA(Landroid/view/View;)J

    move-result-wide v26

    sget-object v14, Lcom/google/android/gms/internal/ads/zzbjl;->zzgQ:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v14

    .line 34
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v3, :cond_9

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzg:Landroid/os/PowerManager;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzh:Landroid/app/KeyguardManager;

    .line 36
    invoke-static {v8, v3, v14}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjl;->zzgT:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v14, v3

    cmp-long v3, v26, v14

    if-ltz v3, :cond_9

    if-nez v11, :cond_9

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzg:Landroid/os/PowerManager;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzh:Landroid/app/KeyguardManager;

    .line 40
    invoke-static {v8, v3, v14}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    if-nez v11, :cond_9

    :goto_5
    const/4 v3, 0x1

    const/4 v11, 0x0

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    .line 38
    :goto_6
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbjl;->zzgV:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v14

    .line 42
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzg:Landroid/os/PowerManager;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzh:Landroid/app/KeyguardManager;

    invoke-static {v8, v14, v15}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v14

    if-eq v10, v14, :cond_a

    const/4 v14, 0x0

    goto :goto_7

    :cond_a
    const/16 v14, 0x40

    :goto_7
    if-eq v10, v12, :cond_b

    const/4 v15, 0x0

    goto :goto_8

    :cond_b
    const/16 v15, 0x8

    :goto_8
    or-int/2addr v14, v15

    if-eq v10, v13, :cond_c

    const/4 v15, 0x0

    goto :goto_9

    :cond_c
    const/16 v15, 0x10

    :goto_9
    or-int/2addr v14, v15

    if-nez v11, :cond_d

    const/16 v11, 0x80

    goto :goto_a

    :cond_d
    const/4 v11, 0x0

    :goto_a
    or-int/2addr v11, v14

    sget-object v14, Lcom/google/android/gms/internal/ads/zzbjl;->zzgT:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v14

    .line 45
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    cmp-long v17, v26, v14

    if-ltz v17, :cond_e

    const/16 v14, 0x20

    goto :goto_b

    :cond_e
    const/4 v14, 0x0

    .line 46
    :goto_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    or-int/2addr v11, v14

    or-int/2addr v11, v3

    invoke-static {v8, v11, v9}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_f
    if-ne v2, v10, :cond_11

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzk:Lcom/google/android/gms/ads/internal/util/zzcc;

    .line 47
    invoke-virtual {v9}, Lcom/google/android/gms/ads/internal/util/zzcc;->zza()Z

    move-result v9

    if-nez v9, :cond_11

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzl:Z

    if-eq v3, v9, :cond_10

    goto :goto_c

    :cond_10
    return-void

    :cond_11
    :goto_c
    if-nez v3, :cond_13

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzl:Z

    if-nez v9, :cond_13

    if-eq v2, v10, :cond_12

    goto :goto_d

    :cond_12
    return-void

    :cond_13
    :goto_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzawc;

    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v17

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzg:Landroid/os/PowerManager;

    .line 49
    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v9

    if-eqz v8, :cond_14

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/google/android/gms/ads/internal/util/zzad;->zzg(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    :goto_e
    if-eqz v8, :cond_15

    .line 51
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    move/from16 v19, v0

    goto :goto_f

    :cond_15
    const/16 v19, 0x8

    :goto_f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzp:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v20

    .line 53
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    .line 54
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    .line 55
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v24

    .line 56
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v28

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzo:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v29, v0

    move-object v14, v2

    move-wide/from16 v15, v17

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v23, v12

    move/from16 v25, v13

    move/from16 v30, v3

    invoke-direct/range {v14 .. v31}, Lcom/google/android/gms/internal/ads/zzawc;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZJLandroid/graphics/Rect;FZLjava/util/List;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzn:Ljava/util/HashSet;

    .line 57
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzawd;

    .line 58
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzawd;->zzc(Lcom/google/android/gms/internal/ads/zzawc;)V

    goto :goto_10

    :cond_16
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzawe;->zzl:Z

    return-void
.end method

.method private final zzk(I)I
    .locals 1

    int-to-float p1, p1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzo:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final zzl(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzi:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zza:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    .line 6
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawb;

    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Lcom/google/android/gms/internal/ads/zzawe;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zza:Landroid/content/BroadcastReceiver;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzx()Lcom/google/android/gms/ads/internal/util/zzcj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawe;->zza:Landroid/content/BroadcastReceiver;

    .line 12
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzcj;->zzb(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zze:Landroid/app/Application;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzj:Lcom/google/android/gms/internal/ads/zzawq;

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private final zzm(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzi:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 4
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzi:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    .line 10
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zza:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    .line 11
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzx()Lcom/google/android/gms/ads/internal/util/zzcj;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawe;->zza:Landroid/content/BroadcastReceiver;

    .line 12
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzcj;->zzc(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    .line 14
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v1, "Failed trying to unregister the receiver"

    .line 15
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zza:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->zze:Landroid/app/Application;

    if-eqz p1, :cond_4

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzj:Lcom/google/android/gms/internal/ads/zzawq;

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawe;->zzi(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawe;->zzi(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawe;->zzi(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawe;->zzi(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzm:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzl(Landroid/view/View;)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzm:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzh()V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzm(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzawd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzn:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzawd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzn:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzd(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzk(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzawe;->zzk(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzawe;->zzk(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzk(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final zze(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzk:Lcom/google/android/gms/ads/internal/util/zzcc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzcc;->zzb(J)V

    return-void
.end method

.method public final zzf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->zzk:Lcom/google/android/gms/ads/internal/util/zzcc;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzawe;->zzc:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzcc;->zzb(J)V

    return-void
.end method

.method final synthetic zzg()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzawe;->zzj(I)V

    return-void
.end method
