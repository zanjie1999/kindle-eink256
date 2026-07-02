.class public Lcom/amazon/nwstd/toc/ReplicaTOCCommandItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "ReplicaTOCCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final TOC_BUTTON_IDENTIFIER:Ljava/lang/String; = "ReplicaTableOfContents"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ReplicaTableOfContents"

    return-object v0
.end method

.method public getDisplayPosition(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;
    .locals 0

    .line 51
    sget-object p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;->START:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    return-object p1
.end method

.method public bridge synthetic getDisplayPosition(Landroid/content/Context;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;
    .locals 0

    .line 19
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/nwstd/toc/ReplicaTOCCommandItem;->getDisplayPosition(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 45
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->toc_command_item_id:I

    return v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 64
    sget p2, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_chrome_toc_toggle:I

    invoke-static {p1, p2}, Lcom/amazon/android/docviewer/ChromeUtil;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 19
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/nwstd/toc/ReplicaTOCCommandItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x14

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/ReplicaTOCCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 34
    sget p2, Lcom/amazon/kindle/newsstand/core/R$string;->goto_toc:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 19
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/nwstd/toc/ReplicaTOCCommandItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/amazon/nwstd/utils/NewtronUtils;->isNewtronNotebookAdditionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/nwstd/utils/NewtronUtils;->isNewtronTOCEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p1}, Lcom/amazon/nwstd/utils/MobiReplicaCommandBarHelper;->isMobiReplicaContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/ReplicaTOCCommandItem;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 69
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    .line 70
    instance-of p2, p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    if-eqz p2, :cond_0

    .line 71
    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->openTOC()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/nwstd/toc/ReplicaTOCCommandItem;->onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method
