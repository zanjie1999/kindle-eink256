.class Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider$1;
.super Ljava/lang/Object;
.source "LibraryLeftNavProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->refreshLibraryLeftNav()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider$1;->this$0:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider$1;->this$0:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->access$000(Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->refreshLibraryLeftNav()V

    return-void
.end method
