.class Lcom/amazon/kcp/reader/notebook/NotebookPlugin$1;
.super Ljava/lang/Object;
.source "NotebookPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/notebook/NotebookPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/notebook/NotebookPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookPlugin;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookPlugin$1;->this$0:Lcom/amazon/kcp/reader/notebook/NotebookPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance p1, Lcom/amazon/notebook/module/provider/NotebookCommandItem;

    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookPlugin$1;->this$0:Lcom/amazon/kcp/reader/notebook/NotebookPlugin;

    invoke-static {v0}, Lcom/amazon/kcp/reader/notebook/NotebookPlugin;->access$000(Lcom/amazon/kcp/reader/notebook/NotebookPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/notebook/module/provider/NotebookCommandItem;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/notebook/NotebookPlugin$1;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
