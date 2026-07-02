.class public final Lcom/amazon/identity/auth/device/if;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/if$a;
    }
.end annotation


# static fields
.field private static final qT:Lcom/amazon/identity/auth/device/if$a;

.field private static final qU:Lcom/amazon/identity/auth/device/if$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/if$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/if$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/if;->qT:Lcom/amazon/identity/auth/device/if$a;

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/if$2;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/if$2;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/if;->qU:Lcom/amazon/identity/auth/device/if$a;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/if$a;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 107
    invoke-interface {p1, p0, p2}, Lcom/amazon/identity/auth/device/if$a;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static al(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 52
    sget-object v0, Lcom/amazon/identity/auth/device/if;->qT:Lcom/amazon/identity/auth/device/if$a;

    .line 1081
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->ao(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hu$a;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1087
    :cond_0
    iget-object v1, v1, Lcom/amazon/identity/auth/device/hu$a;->mPackageName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/if;->al(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1089
    invoke-static {p0, v0, v1}, Lcom/amazon/identity/auth/device/if;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/if$a;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    .line 1098
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/if;->al(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1100
    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/device/if;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/if$a;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
