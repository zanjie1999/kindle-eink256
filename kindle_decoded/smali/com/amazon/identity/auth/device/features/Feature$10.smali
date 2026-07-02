.class final enum Lcom/amazon/identity/auth/device/features/Feature$10;
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

    .line 170
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/features/Feature;-><init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/features/Feature$1;)V

    return-void
.end method


# virtual methods
.method fetchValue(Landroid/content/Context;)Z
    .locals 2

    .line 175
    sget-object v0, Lcom/amazon/identity/platform/weblab/Weblab$Treatment;->T1:Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    sget-object v1, Lcom/amazon/identity/platform/weblab/Weblab;->vJ:Lcom/amazon/identity/platform/weblab/Weblab;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/platform/weblab/Weblab;->bv(Landroid/content/Context;)Lcom/amazon/identity/platform/weblab/Weblab$Treatment;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
