.class Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController$1;
.super Ljava/lang/Object;
.source "BookUpdateSettingsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/settings/IClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController$1;->this$0:Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController$1;->this$0:Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->access$000(Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/versioning/util/InternetConnectionUtil;->hasInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController$1;->this$0:Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->access$100(Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;)Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAlertDialogManager()Lcom/amazon/kindle/krx/application/IAlertDialogManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    .line 44
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController$1;->this$0:Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;

    invoke-static {v1}, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->access$000(Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController$1;->this$0:Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;

    invoke-static {v1}, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->access$000(Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
