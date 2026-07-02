.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eJ:Landroid/widget/ProgressBar;

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 2129
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;->eJ:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2133
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->E(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->F(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->l(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2139
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;->eJ:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method
