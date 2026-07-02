.class public Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;
.super Ljava/lang/Object;
.source "DoubletimeSAHeaderButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private final doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field private headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 19
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

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

    .line 23
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->headerButton:Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButton;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
