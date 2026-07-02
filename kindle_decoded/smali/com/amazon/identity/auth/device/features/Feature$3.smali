.class final enum Lcom/amazon/identity/auth/device/features/Feature$3;
.super Lcom/amazon/identity/auth/device/features/Feature;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/features/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/features/Feature;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/features/Feature$1;)V

    return-void
.end method


# virtual methods
.method fetchValue(Landroid/content/Context;)Z
    .locals 2

    .line 65
    new-instance v0, Lcom/amazon/identity/auth/device/eg;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/eg;-><init>()V

    const-string v1, "com.amazon.map.registration"

    .line 66
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/eg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "panda"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
