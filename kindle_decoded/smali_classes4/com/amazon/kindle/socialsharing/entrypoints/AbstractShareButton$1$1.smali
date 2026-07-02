.class Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;
.super Ljava/lang/Object;
.source "AbstractShareButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getIconKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->getPriority()I

    move-result v0

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 204
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/ComponentStatus;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IButton;->getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1

    .line 224
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 204
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->onClick(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAsAction()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1$1;->this$1:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;

    iget-object v0, v0, Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton$1;->this$0:Lcom/amazon/kindle/socialsharing/entrypoints/AbstractShareButton;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IActionButton;->showAsAction()Z

    move-result v0

    return v0
.end method
