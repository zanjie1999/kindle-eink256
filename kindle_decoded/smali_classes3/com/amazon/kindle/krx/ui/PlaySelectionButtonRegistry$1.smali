.class Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;
.super Ljava/lang/Object;
.source "PlaySelectionButtonRegistry.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->getActionItemProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

.field private widgetItem:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->widgetItem:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;

    return-void
.end method

.method private declared-synchronized getPlayActionWidgetItem()Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->widgetItem:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;-><init>(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->widgetItem:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->widgetItem:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->getPlayActionWidgetItem()Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    .line 60
    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$000(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$100(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->this$0:Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->access$200(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
