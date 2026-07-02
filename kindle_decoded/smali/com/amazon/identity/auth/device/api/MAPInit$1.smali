.class Lcom/amazon/identity/auth/device/api/MAPInit$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gA:Lcom/amazon/identity/auth/device/ms;

.field final synthetic gB:Lcom/amazon/identity/auth/device/api/MAPInit;

.field final synthetic gz:Lcom/amazon/identity/auth/device/ms;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPInit;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/ms;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gz:Lcom/amazon/identity/auth/device/ms;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gA:Lcom/amazon/identity/auth/device/ms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->a(Lcom/amazon/identity/auth/device/api/MAPInit;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/platform/setting/PlatformSettings;->aV(Landroid/content/Context;)Lcom/amazon/identity/platform/setting/PlatformSettings;

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->a(Lcom/amazon/identity/auth/device/api/MAPInit;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/di;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->a(Lcom/amazon/identity/auth/device/api/MAPInit;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/di;->A(Landroid/content/Context;)Lcom/amazon/identity/auth/device/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/di;->init()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->b(Lcom/amazon/identity/auth/device/api/MAPInit;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gz:Lcom/amazon/identity/auth/device/ms;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPInit;->a(Lcom/amazon/identity/auth/device/api/MAPInit;Lcom/amazon/identity/auth/device/ms;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit$1;->gA:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-void
.end method
