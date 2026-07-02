.class public final Lcom/amazon/identity/frc/FrcCookiesManager/d;
.super Ljava/lang/Object;
.source "WindowManagerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.frc.FrcCookiesManager.d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    const-string/jumbo v0, "window"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 20
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 28
    :cond_0
    sget-object p0, Lcom/amazon/identity/frc/FrcCookiesManager/d;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultDisplay() returned is null."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/amazon/identity/frc/FrcCookiesManager/d;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 36
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/amazon/identity/frc/FrcCookiesManager/d;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 42
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
