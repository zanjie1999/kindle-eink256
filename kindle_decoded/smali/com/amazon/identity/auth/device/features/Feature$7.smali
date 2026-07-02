.class final enum Lcom/amazon/identity/auth/device/features/Feature$7;
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

    .line 135
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/features/Feature;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/features/Feature$1;)V

    return-void
.end method


# virtual methods
.method fetchValue(Landroid/content/Context;)Z
    .locals 0

    .line 140
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
