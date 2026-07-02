.class Lcom/amazon/kedu/ftue/Plugin$2;
.super Lcom/amazon/kedu/ftue/events/TutorialPageProvider;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/ftue/Plugin;->initializeEducationFeaturesTutorial(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$reflowableTutorialPageXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

.field final synthetic val$tutorialPageDefault:Lcom/amazon/kedu/ftue/events/TutorialPage;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/ftue/Plugin;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V
    .locals 0

    .line 131
    iput-object p2, p0, Lcom/amazon/kedu/ftue/Plugin$2;->val$reflowableTutorialPageXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

    iput-object p3, p0, Lcom/amazon/kedu/ftue/Plugin$2;->val$tutorialPageDefault:Lcom/amazon/kedu/ftue/events/TutorialPage;

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

    .line 135
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isReflowable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/amazon/kedu/ftue/Plugin$2;->val$reflowableTutorialPageXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/ftue/Plugin$2;->val$tutorialPageDefault:Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 138
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
