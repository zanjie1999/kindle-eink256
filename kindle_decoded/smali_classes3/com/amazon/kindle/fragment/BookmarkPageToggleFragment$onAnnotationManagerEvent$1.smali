.class final Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;
.super Ljava/lang/Object;
.source "BookmarkPageToggleFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/event/AnnotationManagerEvent;

.field final synthetic this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->$event:Lcom/amazon/kindle/event/AnnotationManagerEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getAnnotationsManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->$event:Lcom/amazon/kindle/event/AnnotationManagerEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->$event:Lcom/amazon/kindle/event/AnnotationManagerEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->$event:Lcom/amazon/kindle/event/AnnotationManagerEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->$event:Lcom/amazon/kindle/event/AnnotationManagerEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationType()I

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onAnnotationManagerEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
