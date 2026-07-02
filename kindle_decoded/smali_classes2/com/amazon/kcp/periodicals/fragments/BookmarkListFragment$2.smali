.class Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment$2;
.super Ljava/lang/Object;
.source "BookmarkListFragment.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-static {v0, p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->access$100(Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/amazon/android/docviewer/bookmarks/IBookmark;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment$2;->execute(Lcom/amazon/android/docviewer/bookmarks/IBookmark;)V

    return-void
.end method
