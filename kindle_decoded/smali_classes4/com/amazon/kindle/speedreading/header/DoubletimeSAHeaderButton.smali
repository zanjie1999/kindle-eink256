.class public Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;
.super Ljava/lang/Object;
.source "DoubletimeSAHeaderButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final PRIORITY:I = 0x3e8


# instance fields
.field private proxy:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->proxy:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->proxy:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->proxy:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->getIconKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->proxy:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->proxy:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->proxy:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->proxy:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
