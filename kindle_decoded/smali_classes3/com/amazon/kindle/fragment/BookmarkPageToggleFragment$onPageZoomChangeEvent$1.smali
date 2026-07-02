.class final Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onPageZoomChangeEvent$1;
.super Ljava/lang/Object;
.source "BookmarkPageToggleFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->onPageZoomChangeEvent(Lcom/amazon/android/docviewer/PageZoomChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/android/docviewer/PageZoomChangeEvent;

.field final synthetic this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/android/docviewer/PageZoomChangeEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onPageZoomChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onPageZoomChangeEvent$1;->$event:Lcom/amazon/android/docviewer/PageZoomChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onPageZoomChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {v0}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onPageZoomChangeEvent$1;->$event:Lcom/amazon/android/docviewer/PageZoomChangeEvent;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/PageZoomChangeEvent;->isZoomed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->setDocumentZoomed(Z)V

    .line 221
    iget-object v2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onPageZoomChangeEvent$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->refreshBookmarkViewState$default(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;ZILjava/lang/Object;)V

    return-void
.end method
