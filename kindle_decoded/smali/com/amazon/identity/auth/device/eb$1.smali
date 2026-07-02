.class final Lcom/amazon/identity/auth/device/eb$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/eb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/ek;Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ek;->a(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method
