.class public Lcom/amazon/identity/auth/device/ep;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private lH:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "window"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ep;->lH:Landroid/view/WindowManager;

    return-void
.end method
