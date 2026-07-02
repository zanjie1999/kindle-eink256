.class final enum Lcom/amazon/identity/auth/device/attribute/DeviceAttribute$1;
.super Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/attribute/DeviceAttribute$1;)V

    return-void
.end method


# virtual methods
.method public fetchValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ib;->aw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
