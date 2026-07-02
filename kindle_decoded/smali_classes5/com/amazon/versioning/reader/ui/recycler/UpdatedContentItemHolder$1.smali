.class Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder$1;
.super Ljava/lang/Object;
.source "UpdatedContentItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->setupBookOpen(Landroid/widget/Button;Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder$1;->this$0:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;

    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Clicked OPEN for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getMrpr()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    .line 76
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder$1;->this$0:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;

    const-string v0, "KCUPA_UPDATE_PANEL"

    const-string v1, "UPDATE_PANEL.BOOK_OPEN"

    invoke-static {p1, v0, v1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;->access$100(Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemHolder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
