.class public Lcom/amazon/android/widget/SelectionWidgetItemController;
.super Ljava/lang/Object;
.source "SelectionWidgetItemController.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile providersRegistered:Z


# instance fields
.field private widgetItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/android/widget/SelectionWidgetItemController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/widget/SelectionWidgetItemController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 235
    sput-boolean v0, Lcom/amazon/android/widget/SelectionWidgetItemController;->providersRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/SelectionWidgetItemController;->widgetItems:Ljava/util/Set;

    return-void
.end method

.method private addHighlightItems(Ljava/util/Set;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ReaderActivity;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            ">;>;",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    .line 200
    sget-object v2, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->BLUE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->PINK:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->ORANGE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 207
    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v7, v0, [I

    .line 208
    sget v8, Lcom/amazon/kindle/krl/R$integer;->widget_item_highlight_yellow:I

    .line 209
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    aput v8, v7, v3

    sget v8, Lcom/amazon/kindle/krl/R$integer;->widget_item_highlight_blue:I

    .line 210
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    aput v8, v7, v4

    sget v4, Lcom/amazon/kindle/krl/R$integer;->widget_item_highlight_pink:I

    .line 211
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v7, v5

    sget v4, Lcom/amazon/kindle/krl/R$integer;->widget_item_highlight_orange:I

    .line 212
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v7, v6

    .line 215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 217
    new-instance v5, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;

    aget-object v6, v1, v3

    aget v8, v7, v3

    invoke-direct {v5, v6, p2, v8}, Lcom/amazon/android/widget/items/HighlightActionWidgetItem;-><init>(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 221
    new-instance p4, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;

    invoke-direct {p4, v4}, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;-><init>(Ljava/util/List;)V

    .line 222
    new-instance v0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem;

    sget v3, Lcom/amazon/kindle/krl/R$integer;->widget_item_highlight_category:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v0, v3, p4, p3, v1}, Lcom/amazon/android/widget/HighlightCategoryWidgetItem;-><init>(ILcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;Landroid/content/Context;[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    .line 224
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance p3, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;

    sget p4, Lcom/amazon/kindle/krl/R$integer;->widget_item_highlight_delete:I

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    invoke-direct {p3, p2, p4}, Lcom/amazon/android/widget/items/RemoveHighlightActionWidgetItem;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method

.method private addKRXWidgetItemProvider(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ")V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/android/widget/SelectionWidgetItemController;->widgetItems:Ljava/util/Set;

    new-instance v1, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;

    invoke-direct {v1, p1, p2}, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;-><init>(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized registerKRXProviders(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    monitor-enter p0

    .line 243
    :try_start_0
    sget-boolean v0, Lcom/amazon/android/widget/SelectionWidgetItemController;->providersRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 244
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    .line 249
    new-instance v0, Lcom/amazon/android/widget/items/NoteWidgetItemProvider;

    invoke-direct {v0}, Lcom/amazon/android/widget/items/NoteWidgetItemProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 250
    new-instance v0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider;

    invoke-direct {v0}, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 251
    new-instance v0, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider;

    invoke-direct {v0}, Lcom/amazon/android/widget/items/ZoomWidgetItemProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 252
    new-instance v0, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider;

    invoke-direct {v0}, Lcom/amazon/android/widget/items/DragToSelectWidgetItemProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 253
    new-instance v0, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider;

    invoke-direct {v0}, Lcom/amazon/android/widget/items/WikipediaWidgetItemProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    const/4 p1, 0x1

    .line 254
    sput-boolean p1, Lcom/amazon/android/widget/SelectionWidgetItemController;->providersRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method addCSBButtonProvider(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/android/widget/SelectionWidgetItemController;->widgetItems:Ljava/util/Set;

    new-instance v1, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;

    invoke-direct {v1, p1, p2}, Lcom/amazon/android/widget/items/CSBActionWidgetItemWrapper;-><init>(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPrioritizedWidgetItemList(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            ">;>;"
        }
    .end annotation

    const-string v0, "Sort SelectionWidgetItemController Items"

    const/4 v1, 0x1

    .line 176
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 177
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 178
    iget-object v2, p0, Lcom/amazon/android/widget/SelectionWidgetItemController;->widgetItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 179
    invoke-interface {v3, p1}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->isVisible(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_1
    new-instance v2, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;

    invoke-direct {v2, p1}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 186
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 187
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public populateWidgetItems(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 10

    const/4 v0, 0x1

    const-string v1, "SelectionWidgetItemController.populateWidgetItems()"

    .line 103
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getSupportedReaderActivityFeatures()Ljava/util/Set;

    move-result-object v2

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 109
    sget-object p1, Lcom/amazon/android/widget/SelectionWidgetItemController;->TAG:Ljava/lang/String;

    const-string v0, "No IObjectSelectionModel available. Can\'t populate buttons"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {v1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 115
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v6

    .line 116
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/amazon/android/widget/SelectionWidgetItemController;->widgetItems:Ljava/util/Set;

    .line 121
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/amazon/kindle/krl/R$bool;->fold_highlight_buttons:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 122
    iget-object v8, p0, Lcom/amazon/android/widget/SelectionWidgetItemController;->widgetItems:Ljava/util/Set;

    invoke-direct {p0, v8, v3, p1, v7}, Lcom/amazon/android/widget/SelectionWidgetItemController;->addHighlightItems(Ljava/util/Set;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ReaderActivity;Z)V

    if-eqz v6, :cond_1

    .line 125
    invoke-direct {p0, v6}, Lcom/amazon/android/widget/SelectionWidgetItemController;->registerKRXProviders(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 129
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v8, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;

    invoke-direct {v8, v7}, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;-><init>(Ljava/util/List;)V

    .line 131
    new-instance v9, Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;

    invoke-direct {v9, v8, p1}, Lcom/amazon/android/widget/items/SearchCategoryWidgetItem;-><init>(Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;Landroid/content/Context;)V

    .line 132
    iget-object p1, p0, Lcom/amazon/android/widget/SelectionWidgetItemController;->widgetItems:Ljava/util/Set;

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p1, Lcom/amazon/android/widget/items/BookSearchWidgetSelectionItem;

    sget v8, Lcom/amazon/kindle/krl/R$integer;->widget_item_search_book:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-direct {p1, v3, v8}, Lcom/amazon/android/widget/items/BookSearchWidgetSelectionItem;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object p1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchWeb:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    new-instance p1, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;

    sget v8, Lcom/amazon/kindle/krl/R$integer;->widget_item_search_web:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-direct {p1, v3, v8, v4}, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;IZ)V

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;->SearchBaidu:Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 141
    new-instance p1, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;

    sget v8, Lcom/amazon/kindle/krl/R$integer;->widget_item_search_baidu:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct {p1, v3, v5, v0}, Lcom/amazon/android/widget/items/WebSearchWidgetSelectionItem;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;IZ)V

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v6, :cond_4

    .line 145
    invoke-interface {v6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    .line 147
    sget-object p1, Lcom/amazon/android/widget/SelectionWidgetItemController;->TAG:Ljava/lang/String;

    const-string v0, "We weren\'t able to get an IContentSelection object. Buttons can\'t be added!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    :cond_5
    invoke-interface {v6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getSelectionWidgetItems()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 150
    invoke-direct {p0, v5, p1}, Lcom/amazon/android/widget/SelectionWidgetItemController;->addKRXWidgetItemProvider(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Lcom/amazon/kindle/krx/content/IContentSelection;)V

    goto :goto_1

    .line 156
    :cond_6
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDefaultCustomSelectionButtonsController()Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;->getDefaultSelectionButtons(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 159
    invoke-virtual {p0, v0, v3}, Lcom/amazon/android/widget/SelectionWidgetItemController;->addCSBButtonProvider(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    goto :goto_3

    .line 162
    :cond_7
    invoke-static {v1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
