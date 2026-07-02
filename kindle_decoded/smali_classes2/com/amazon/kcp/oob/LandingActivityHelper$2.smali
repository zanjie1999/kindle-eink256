.class Lcom/amazon/kcp/oob/LandingActivityHelper$2;
.super Ljava/lang/Object;
.source "LandingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/LandingActivityHelper;->showExternalStoragePermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/LandingActivityHelper;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$2;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 105
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setPersonalDocsSetting(Z)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$2;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-static {v0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->access$000(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$2;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-static {v2}, Lcom/amazon/kcp/oob/LandingActivityHelper;->access$000(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->storage_permission_denied_toast:I

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
