.class public Lcom/amazon/krf/internal/SelectionChangeListenerCollection;
.super Ljava/lang/Object;
.source "SelectionChangeListenerCollection.java"

# interfaces
.implements Lcom/amazon/krf/platform/SelectionChangeListener;


# instance fields
.field private mSelectionCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/SelectionChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/krf/platform/SelectionChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onSelectionChange(Lcom/amazon/krf/platform/SelectionState;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    iget-object v2, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/SelectionChangeListener;

    .line 50
    invoke-interface {v2, p1}, Lcom/amazon/krf/platform/SelectionChangeListener;->onSelectionChange(Lcom/amazon/krf/platform/SelectionState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelectionFinalized(Lcom/amazon/krf/platform/SelectionState;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/SelectionChangeListener;

    .line 59
    invoke-interface {v2, p1}, Lcom/amazon/krf/platform/SelectionChangeListener;->onSelectionFinalized(Lcom/amazon/krf/platform/SelectionState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelectionStart(Lcom/amazon/krf/platform/SelectionState;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    iget-object v2, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/SelectionChangeListener;

    .line 41
    invoke-interface {v2, p1}, Lcom/amazon/krf/platform/SelectionChangeListener;->onSelectionStart(Lcom/amazon/krf/platform/SelectionState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lcom/amazon/krf/platform/SelectionChangeListener;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->mSelectionCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
