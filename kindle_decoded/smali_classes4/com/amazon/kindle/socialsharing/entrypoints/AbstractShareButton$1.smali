.class Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;
.super Ljava/lang/Object;
.source "AbstractShareButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getListAdapter()Lcom/amazon/kindle/krx/providers/ISortableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance p1, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;-><init>(Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;)V

    return-object p1

    .line 199
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Exactly one book must be selected to share; no button will be provided."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 195
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 195
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->getPriority(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public getPriority(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)I"
        }
    .end annotation

    .line 250
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->access$100(Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;)I

    move-result p1

    return p1
.end method
