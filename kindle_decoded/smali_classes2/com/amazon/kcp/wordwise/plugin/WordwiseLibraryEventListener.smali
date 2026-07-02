.class public Lcom/amazon/kcp/wordwise/plugin/WordwiseLibraryEventListener;
.super Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;
.source "WordwiseLibraryEventListener.java"


# instance fields
.field private libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/library/ILibraryManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryEventListener;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordwiseLibraryEventListener;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-void
.end method

.method private removeWordWiseContentFromFS(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 46
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->removeWordWiseOverrideFile(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 47
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->removeWordWiseSidecarFile(Lcom/amazon/kindle/krx/content/IBook;ZZ)V

    return-void
.end method


# virtual methods
.method public onContentDelete(Ljava/lang/String;Z)V
    .locals 0

    .line 35
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/plugin/WordwiseLibraryEventListener;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/plugin/WordwiseLibraryEventListener;->removeWordWiseContentFromFS(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/plugin/WordwiseLibraryEventListener;->removeWordWiseContentFromFS(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method
