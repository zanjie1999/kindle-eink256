.class Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "LibraryDownloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/LibraryDownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/controller/LibraryDownloadController;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/audible/hushpuppy/controller/LibraryDownloadController$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;-><init>(Lcom/audible/hushpuppy/controller/LibraryDownloadController;)V

    return-void
.end method


# virtual methods
.method public onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public onContentDelete(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-static {v0, p1, p2}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->access$100(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 198
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-static {p2}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->access$200(Lcom/audible/hushpuppy/controller/LibraryDownloadController;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 199
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-static {p2, p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->access$300(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 200
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-static {p2}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->access$200(Lcom/audible/hushpuppy/controller/LibraryDownloadController;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_0
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-static {p2}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->access$400(Lcom/audible/hushpuppy/controller/LibraryDownloadController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->access$400(Lcom/audible/hushpuppy/controller/LibraryDownloadController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadUtils;->isAutoDownloadEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    .line 205
    invoke-static {p2, p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->access$500(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasAudiobook()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 206
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;->this$0:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-static {p2, p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->access$300(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_1
    :goto_0
    return-void
.end method
