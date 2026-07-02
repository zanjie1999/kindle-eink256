.class Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$2;
.super Ljava/lang/Object;
.source "BookmarkHintButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$2;->this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$2;->this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->access$100(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton$2;->this$0:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->access$000(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->toggleBookmarkForLocationIndex(I)Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object p1

    .line 65
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Added:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    if-ne p1, v0, :cond_0

    .line 66
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandReplicaView"

    const-string v1, "AddBookmarkWithHint"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
