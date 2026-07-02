.class final Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;
.super Ljava/lang/Object;
.source "BookmarkPageToggleFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->onDocViewerSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

.field final synthetic this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->$event:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->$event:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getChangeType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->$event:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    const-string v2, "event.docViewer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setShowBookmarkOnNavigation(Z)V

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->$event:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setBookMarkFeatureSupported(Z)V

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->endSettingsChange()V

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$refreshBookmarkLayout(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)V

    .line 240
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->beginSettingsChange()V

    .line 231
    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onDocViewerSettingsChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
