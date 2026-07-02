.class Lcom/amazon/kcp/oob/LandingActivityHelper$3;
.super Ljava/lang/Object;
.source "LandingActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 113
    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$3;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setPersonalDocsSetting(Z)V

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$3;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingActivityHelper;->access$000(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$3;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-static {v0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->access$000(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->storage_permission_denied_toast:I

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
