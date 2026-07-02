.class public Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;
.super Ljava/lang/Object;
.source "DoubletimeTabletHeaderButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUTTON_PRIORITY:I = 0x3e8


# instance fields
.field private doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field private headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 21
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButton;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x3e8

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
