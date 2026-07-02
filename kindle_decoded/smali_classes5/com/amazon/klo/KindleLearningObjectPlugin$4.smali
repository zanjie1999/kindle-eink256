.class Lcom/amazon/klo/KindleLearningObjectPlugin$4;
.super Lcom/amazon/kedu/ftue/events/Tutorial;
.source "KindleLearningObjectPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tutorialMaxCount:I


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectPlugin;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;I)V
    .locals 0

    .line 407
    iput p6, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$4;->val$tutorialMaxCount:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazon/kedu/ftue/events/Tutorial;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kedu/ftue/events/EventContext;)Z
    .locals 4

    .line 411
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectPlugin;->isSidecarPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/events/FTUEEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/data/EventRecord;->getCount()J

    move-result-wide v0

    iget p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$4;->val$tutorialMaxCount:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
