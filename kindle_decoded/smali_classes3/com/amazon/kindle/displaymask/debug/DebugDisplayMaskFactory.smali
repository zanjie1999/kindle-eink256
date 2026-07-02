.class public final Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskFactory;
.super Ljava/lang/Object;
.source "DebugFoldable.kt"

# interfaces
.implements Lcom/amazon/kindle/displaymask/DisplayMaskUtilsFactory;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskFactory;->INSTANCE:Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDisplayMaskUtils(Landroid/app/Application;)Lcom/amazon/kindle/displaymask/DisplayMaskUtils;
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "DEBUG_DISPLAY_MASK_PREFS"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ENABLE_DEBUG"

    .line 30
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskActivityListener;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskActivityListener;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    new-instance p1, Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskUtils;

    invoke-direct {p1}, Lcom/amazon/kindle/displaymask/debug/DebugDisplayMaskUtils;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
