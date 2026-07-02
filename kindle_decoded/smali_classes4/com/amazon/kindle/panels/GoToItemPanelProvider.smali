.class public Lcom/amazon/kindle/panels/GoToItemPanelProvider;
.super Ljava/lang/Object;
.source "GoToItemPanelProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;
    }
.end annotation


# instance fields
.field private PRIORITY:I

.field private volatile panelRows:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation
.end field

.field private rows:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation
.end field

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 34
    iput v0, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->PRIORITY:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->panelRows:Ljava/util/Collection;

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->rows:Ljava/util/Collection;

    .line 41
    new-instance v0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;

    iget-object v1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
    .locals 1
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

    .line 51
    iget-object p1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->panelRows:Ljava/util/Collection;

    if-nez p1, :cond_0

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->rows:Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->panelRows:Ljava/util/Collection;

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->panelRows:Ljava/util/Collection;

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I
    .locals 0

    .line 46
    iget p1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->PRIORITY:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/GoToItemPanelProvider;->getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I

    move-result p1

    return p1
.end method
