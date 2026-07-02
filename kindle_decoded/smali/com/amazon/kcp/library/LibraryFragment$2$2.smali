.class Lcom/amazon/kcp/library/LibraryFragment$2$2;
.super Ljava/lang/Object;
.source "LibraryFragment.java"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryContextChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryFragment$2;->showSeries(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/LibraryFragment$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryFragment$2;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$2$2;->this$1:Lcom/amazon/kcp/library/LibraryFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryContextChanged(Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$2$2;->this$1:Lcom/amazon/kcp/library/LibraryFragment$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryFragment$2;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$500(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContext;->syncFromContext(Lcom/amazon/kcp/library/LibraryContext;)V

    return-void
.end method
