.class Lcom/amazon/sitb/android/services/DialogService$1;
.super Ljava/lang/Object;
.source "DialogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/services/DialogService;->showDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/services/DialogService;

.field final synthetic val$messageResource:I

.field final synthetic val$titleResource:I


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/services/DialogService;II)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/sitb/android/services/DialogService$1;->this$0:Lcom/amazon/sitb/android/services/DialogService;

    iput p2, p0, Lcom/amazon/sitb/android/services/DialogService$1;->val$titleResource:I

    iput p3, p0, Lcom/amazon/sitb/android/services/DialogService$1;->val$messageResource:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/amazon/sitb/android/services/DialogService$1;->this$0:Lcom/amazon/sitb/android/services/DialogService;

    invoke-static {v1}, Lcom/amazon/sitb/android/services/DialogService;->access$000(Lcom/amazon/sitb/android/services/DialogService;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    iget v1, p0, Lcom/amazon/sitb/android/services/DialogService$1;->val$titleResource:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/sitb/android/services/DialogService$1;->val$messageResource:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 46
    sget v1, Lcom/amazon/kindle/sitb/R$string;->upsell_bar_alert_ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
