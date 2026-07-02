.class Lcom/audible/hushpuppy/controller/UserController$1;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/UserController;->updateToaOfferStatus(Lcom/audible/hushpuppy/service/user/CustomerStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/UserController;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/UserController;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/UserController$1;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/UserController$1;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/UserController;->access$100(Lcom/audible/hushpuppy/controller/UserController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOA Eligible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/UserController$1;->this$0:Lcom/audible/hushpuppy/controller/UserController;

    iget-object v2, v2, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/UserModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/UserModel;->getToaOfferStatus()Lcom/audible/hushpuppy/model/read/IUserModel$ToaStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
