.class public Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;
.super Ljava/lang/Object;
.source "KRXPanelProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;,
        Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;
    }
.end annotation


# static fields
.field private static messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static panelRowProviders:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/SortableProviderRegistry<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->panelRowProviders:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    .line 42
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method static getPanelListener(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)Lcom/amazon/kindle/panels/PanelListener;
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V

    return-object v0
.end method

.method public static getPanelRows(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/panels/IPanelCustomItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "KRXPanelProvider.getPanelRows()"

    .line 73
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 74
    sget-object v2, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->panelRowProviders:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    .line 75
    invoke-virtual {v2, p0}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 78
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;

    .line 79
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getPanelRows for "

    .line 80
    invoke-static {v8, v7, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    new-instance v9, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->getLocation()Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelCustomItem;-><init>(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v8, v7, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v1, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v3
.end method

.method public static registerCustomPanelRowProvider(Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->panelRowProviders:Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/krx/providers/ProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method
