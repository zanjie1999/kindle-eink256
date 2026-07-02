.class Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;
.super Ljava/lang/Object;
.source "PlaySelectionButtonRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$ProxyCustomSelectionButton;,
        Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$PlayActionWidgetItem;
    }
.end annotation


# instance fields
.field private playButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;>;"
        }
    .end annotation
.end field

.field private prioritizedButton:Lcom/amazon/kindle/krx/ui/IButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation
.end field

.field private provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final qhButtonPriority:I

.field private final selectionButtonPriority:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 44
    sget v0, Lcom/amazon/kindle/krxsdk/R$integer;->widget_item_play_button_highlighted:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->qhButtonPriority:I

    .line 45
    sget v0, Lcom/amazon/kindle/krxsdk/R$integer;->widget_item_play_button_selected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->selectionButtonPriority:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->isAHighlightSelection(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->qhButtonPriority:I

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->selectionButtonPriority:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->handleOnClick(Lcom/amazon/kindle/krx/content/IContentSelection;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->getPrioritizedPlaySelectionButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)Lcom/amazon/kindle/krx/ui/IButton;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->prioritizedButton:Lcom/amazon/kindle/krx/ui/IButton;

    return-object p0
.end method

.method private getPrioritizedPlaySelectionButton()V
    .locals 2

    .line 195
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 201
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->playButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-eqz v1, :cond_1

    .line 204
    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/IButton;

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->prioritizedButton:Lcom/amazon/kindle/krx/ui/IButton;

    goto :goto_1

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setPlaySelectionButtonProviderRegistry not called?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private handleOnClick(Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->prioritizedButton:Lcom/amazon/kindle/krx/ui/IButton;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IButton;->onClick(Ljava/lang/Object;)V

    .line 171
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 174
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 177
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IContentSelection;->selectNone()V

    :cond_2
    return-void
.end method

.method private static isAHighlightSelection(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 1

    .line 217
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->isQuickHighlight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->hasSelectedHighlight()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method addSelectionPlayButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->playButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void

    .line 188
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setPlaySelectionButtonProviderRegistry not called?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method declared-synchronized getActionItemProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry$1;-><init>(Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->provider:Lcom/amazon/kindle/krx/providers/ISortableProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setPlaySelectionButtonProviderRegistry(Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;>;)V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;->playButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-void
.end method
