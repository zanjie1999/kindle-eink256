.class public Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;
.super Ljava/lang/Object;
.source "DefaultCustomSelectionButtonsController.java"


# instance fields
.field private final selectionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;->selectionButtons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCustomSelectionButton(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;->selectionButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDefaultSelectionButtons(Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;->selectionButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;->selectionButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 49
    invoke-interface {v2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getCorrespondingFeatureType()Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 50
    invoke-interface {v2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getCorrespondingFeatureType()Lcom/amazon/kcp/reader/features/ReaderActivityFeatureType;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
