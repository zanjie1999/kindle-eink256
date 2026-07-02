.class public abstract Lcom/amazon/identity/auth/device/eb;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/eb$a;
    }
.end annotation


# static fields
.field public static final le:Lcom/amazon/identity/auth/device/eb$a;


# instance fields
.field protected final mComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/eb$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/eb$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/eb;->le:Lcom/amazon/identity/auth/device/eb$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/identity/auth/device/eb;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/eb$a;)Landroid/content/ComponentName;
    .locals 6

    .line 66
    new-instance v0, Lcom/amazon/identity/auth/device/ek;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x6

    new-array v2, v1, [Landroid/content/ComponentName;

    .line 68
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.amazon.imp"

    invoke-direct {v3, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.amazon.sso"

    invoke-direct {v3, v5, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.amazon.dcp"

    invoke-direct {v3, v5, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.amazon.fv"

    invoke-direct {v3, v5, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.amazon.canary"

    invoke-direct {v3, v5, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v3, v2, v5

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x5

    aput-object v3, v2, p0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 76
    aget-object p0, v2, v4

    .line 78
    invoke-interface {p2, v0, p0}, Lcom/amazon/identity/auth/device/eb$a;->a(Lcom/amazon/identity/auth/device/ek;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ek;->ed()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {p2, v0, v2}, Lcom/amazon/identity/auth/device/eb$a;->a(Lcom/amazon/identity/auth/device/ek;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bw(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object p1, p0, Lcom/amazon/identity/auth/device/eb;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method
