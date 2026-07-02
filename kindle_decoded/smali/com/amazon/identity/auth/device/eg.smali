.class public Lcom/amazon/identity/auth/device/eg;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.eg"


# instance fields
.field private final lr:Lcom/amazon/identity/auth/device/utils/ReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/eg;->lr:Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eg;->lr:Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 79
    :catch_0
    sget-object p2, Lcom/amazon/identity/auth/device/eg;->TAG:Ljava/lang/String;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "Cannot call such method %s in SystemProperties in Android %d"

    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private bx(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 68
    const-class v2, Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "addChangeCallback"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/identity/auth/device/eg;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/mw;->iV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/eg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eg;->bx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/eg;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Try to get Settings.Global: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 53
    invoke-static {p2, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eg;->bx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    sget-object v0, Lcom/amazon/identity/auth/device/eg;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Try to get system property: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 35
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "get"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/identity/auth/device/eg;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
