.class public Lcom/amazon/kedu/ftue/EducationFeaturesTutorialWithoutXray;
.super Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;
.source "EducationFeaturesTutorialWithoutXray.java"


# instance fields
.field private final sequenceKeyForFullTutorial:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/kedu/ftue/events/TutorialPageProvider;)V

    .line 27
    iput-object p4, p0, Lcom/amazon/kedu/ftue/EducationFeaturesTutorialWithoutXray;->sequenceKeyForFullTutorial:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/kedu/ftue/events/EventContext;)Z
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/amazon/kedu/ftue/EducationFeaturesTutorialWithoutXray;->sequenceKeyForFullTutorial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/ftue/events/EventContext;->getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object v0

    .line 37
    invoke-super {p0, p1}, Lcom/amazon/kedu/ftue/EducationFeaturesTutorial;->evaluate(Lcom/amazon/kedu/ftue/events/EventContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/data/EventRecord;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
