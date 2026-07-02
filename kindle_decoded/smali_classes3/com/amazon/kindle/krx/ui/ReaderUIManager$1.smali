.class Lcom/amazon/kindle/krx/ui/ReaderUIManager$1;
.super Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;
.source "ReaderUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/ReaderUIManager;-><init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/android/menu/CustomActionMenuController;Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/KindleReaderSDK;Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry<",
        "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/ReaderUIManager;

.field final synthetic val$hushpuppyUpsellDetector:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/ReaderUIManager;Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$1;->this$0:Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$1;->val$hushpuppyUpsellDetector:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAll(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$1;->val$hushpuppyUpsellDetector:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;

    .line 182
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;->isSuppressionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-super {p0, p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    .line 188
    iget-object v3, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$1;->val$hushpuppyUpsellDetector:Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;->checkAndWrapActionBarDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    :cond_1
    monitor-exit p0

    return-object v0

    .line 183
    :cond_2
    :goto_1
    :try_start_1
    invoke-super {p0, p1}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic getAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 178
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/ReaderUIManager$1;->getAll(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
