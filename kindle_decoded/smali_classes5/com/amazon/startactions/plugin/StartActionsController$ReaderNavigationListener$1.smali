.class Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener$1;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener$1;->this$1:Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;

    iput-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 980
    invoke-virtual {p0}, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener$1;->this$1:Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;

    iget-object v0, v0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/plugin/StartActionsController;->canRegisterStartActions(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    sput-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->canRegisterStartActions:Z

    const/4 v0, 0x1

    .line 984
    sput-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->canRegisterStartActionsCached:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 990
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->HIGH:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
