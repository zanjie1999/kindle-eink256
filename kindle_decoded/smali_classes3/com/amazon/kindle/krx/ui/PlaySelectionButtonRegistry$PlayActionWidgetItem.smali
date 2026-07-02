.class Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "PlaySelectionButtonRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayActionWidgetItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;-><init>(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)V

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "SHARED_PLAY_CONTENT"

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    .line 105
    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$000(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$100(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$200(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 84
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krxsdk/R$string;->selection_item_play:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 84
    check-cast p2, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$500(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 113
    :goto_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->HIGHLIGHTED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 84
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$400(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/content/IContentSelection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 84
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;->onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method
