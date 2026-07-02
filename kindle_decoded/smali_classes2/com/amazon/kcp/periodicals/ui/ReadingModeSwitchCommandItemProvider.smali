.class public Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItemProvider;
.super Ljava/lang/Object;
.source "ReadingModeSwitchCommandItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
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
.field private readingModeSwitchCommandItem:Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 0
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

    .line 15
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItemProvider;->readingModeSwitchCommandItem:Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;

    invoke-direct {p1}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItemProvider;->readingModeSwitchCommandItem:Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItemProvider;->readingModeSwitchCommandItem:Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItem;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/ReadingModeSwitchCommandItemProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
