.class Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;
.super Ljava/lang/Object;
.source "EndActionsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/EndActionsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeforeYouGoPanelProvider"
.end annotation


# static fields
.field private static final EA_LEFT_NAV_PRIORITY:I = 0x19


# direct methods
.method private constructor <init>(Lcom/amazon/ea/EndActionsPlugin;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;-><init>(Lcom/amazon/ea/EndActionsPlugin;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 388
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    .line 393
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->before_you_go_left_nav:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider$1;

    invoke-direct {v1, p0}, Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider$1;-><init>(Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;)V

    const/4 v2, 0x0

    .line 396
    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/krx/ui/panels/PanelComponentFactory;->createTextComponent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;)Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->setTextComponent(Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;

    move-result-object v0

    .line 410
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 411
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 412
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_3

    .line 414
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->setStatus(Lcom/amazon/kindle/krx/ui/ComponentStatus;)Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;

    .line 417
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder;->build()Lcom/amazon/kindle/krx/ui/panels/PanelRowBuilder$SimplePanelRow;

    move-result-object p1

    .line 418
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I
    .locals 0

    const/16 p1, 0x19

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 388
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;->getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I

    move-result p1

    return p1
.end method
