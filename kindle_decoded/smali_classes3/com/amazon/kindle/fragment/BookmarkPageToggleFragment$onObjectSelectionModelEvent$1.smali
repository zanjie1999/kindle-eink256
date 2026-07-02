.class final Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onObjectSelectionModelEvent$1;
.super Ljava/lang/Object;
.source "BookmarkPageToggleFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;

.field final synthetic this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onObjectSelectionModelEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onObjectSelectionModelEvent$1;->$event:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onObjectSelectionModelEvent$1;->$event:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onObjectSelectionModelEvent$1;->$event:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    const-string v1, "event.publisher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onObjectSelectionModelEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setHasActiveSelection(Z)V

    :cond_1
    return-void
.end method
