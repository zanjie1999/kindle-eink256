.class final Lcom/amazon/identity/auth/device/jf$1;
.super Ljava/lang/Thread;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/jf;->gS()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 65
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->a(Landroid/os/Handler;)Landroid/os/Handler;

    .line 69
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
