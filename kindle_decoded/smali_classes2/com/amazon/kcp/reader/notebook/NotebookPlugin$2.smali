.class Lcom/amazon/kcp/reader/notebook/NotebookPlugin$2;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "NotebookPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/notebook/NotebookPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookPlugin;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 39
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->getInstance()Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->resetLastOpened()V

    return-void
.end method
