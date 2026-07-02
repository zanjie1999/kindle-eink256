.class Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookInfoButtonLauncher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;)V
    .locals 0

    .line 1404
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V
    .locals 0

    .line 1404
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/plugin/StartActionsController;->canRegisterStartActions(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1416
    :cond_0
    new-instance p1, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher$1;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher$1;-><init>(Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1404
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x64

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 1404
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
