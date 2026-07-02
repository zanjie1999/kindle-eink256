.class public final Lcom/amazon/identity/auth/device/utils/ResourceHelper;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/utils/ResourceHelper$ResourceNotFoundException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.utils.ResourceHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "anim"

    .line 45
    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static B(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    .line 50
    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    .line 59
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v4, "The %s resource %s has not been found"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p0, Lcom/amazon/identity/auth/device/utils/ResourceHelper$ResourceNotFoundException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    const-string p1, "%s Resource %s not found"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper$ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "string"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "The String resource %s has not been found"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance p0, Lcom/amazon/identity/auth/device/utils/ResourceHelper$ResourceNotFoundException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "String Resource %s not found"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper$ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    .line 40
    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
