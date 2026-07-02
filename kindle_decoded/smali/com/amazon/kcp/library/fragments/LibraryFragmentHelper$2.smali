.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$2;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$2;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$2;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->notifyDataSetChanged()V

    return-void
.end method
