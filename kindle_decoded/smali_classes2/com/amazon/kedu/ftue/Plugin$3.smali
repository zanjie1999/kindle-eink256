.class Lcom/amazon/kedu/ftue/Plugin$3;
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
.field final synthetic val$fixedFormatTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

.field final synthetic val$mobiTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

.field final synthetic val$reflowableTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/ftue/Plugin;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V
    .locals 0

    .line 148
    iput-object p2, p0, Lcom/amazon/kedu/ftue/Plugin$3;->val$mobiTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

    iput-object p3, p0, Lcom/amazon/kedu/ftue/Plugin$3;->val$reflowableTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

    iput-object p4, p0, Lcom/amazon/kedu/ftue/Plugin$3;->val$fixedFormatTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

    invoke-direct {p0}, Lcom/amazon/kedu/ftue/events/TutorialPageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kedu/ftue/events/EventContext;)Ljava/util/List;
    .locals 1
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

    .line 152
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isMobiOrTopaz()Z

    move-result v0

    .line 153
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isReflowable()Z

    move-result p1

    if-eqz v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/amazon/kedu/ftue/Plugin$3;->val$mobiTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 156
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kedu/ftue/Plugin$3;->val$reflowableTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 157
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amazon/kedu/ftue/Plugin$3;->val$fixedFormatTutorialPageNoXray:Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 158
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
