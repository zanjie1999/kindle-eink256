.class final Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;
.super Ljava/lang/Object;
.source "BookmarkPageToggleFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->onNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

.field final synthetic this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->shouldProcessNavigationEvents()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setHasNavigation(Z)V

    .line 184
    iget-object v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setHasNavigation(Z)V

    .line 180
    iget-object v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onNavigationEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
