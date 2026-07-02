.class Lcom/amazon/kedu/flashcards/FlashcardsPlugin$3;
.super Lcom/amazon/kedu/ftue/events/TutorialPageProvider;
.source "FlashcardsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$reflowableTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

.field final synthetic val$tutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/FlashcardsPlugin;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V
    .locals 0

    .line 400
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$3;->val$reflowableTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

    iput-object p3, p0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$3;->val$tutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

    invoke-direct {p0}, Lcom/amazon/kedu/ftue/events/TutorialPageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kedu/ftue/events/EventContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/ftue/events/EventContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/events/TutorialPage;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isReflowable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$3;->val$reflowableTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 404
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$3;->val$tutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 405
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
