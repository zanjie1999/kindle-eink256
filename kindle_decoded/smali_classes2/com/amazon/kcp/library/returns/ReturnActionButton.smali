.class public Lcom/amazon/kcp/library/returns/ReturnActionButton;
.super Ljava/lang/Object;
.source "ReturnActionButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;
    }
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
.field private final buttonText:Ljava/lang/String;

.field private final listener:Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnActionButton;->listener:Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;

    .line 29
    iput-object p2, p0, Lcom/amazon/kcp/library/returns/ReturnActionButton;->buttonText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->return_contextual_action:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnActionButton;->buttonText:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/returns/ReturnActionButton;->getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/ComponentStatus;"
        }
    .end annotation

    .line 54
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/returns/ReturnActionButton;->onClick(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnActionButton;->listener:Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;->onClick(Ljava/util/List;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
