.class public Lcom/amazon/kedu/flashcards/FlashcardsPlugin$FlashcardsStandAloneButtonProvider;
.super Ljava/lang/Object;
.source "FlashcardsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/FlashcardsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlashcardsStandAloneButtonProvider"
.end annotation

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


# direct methods
.method public constructor <init>(Lcom/amazon/kedu/flashcards/FlashcardsPlugin;)V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 0
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

    .line 431
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->isFlashcardEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 433
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->access$000()Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 426
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$FlashcardsStandAloneButtonProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
