.class public abstract Lcom/amazon/kedu/ftue/events/Tutorial;
.super Lcom/amazon/kedu/ftue/events/FTUEEvent;
.source "Tutorial.java"


# instance fields
.field private tutorialPageProvider:Lcom/amazon/kedu/ftue/events/TutorialPageProvider;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/ftue/events/FTUEEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 42
    iput-object p4, p0, Lcom/amazon/kedu/ftue/events/Tutorial;->tutorialPageProvider:Lcom/amazon/kedu/ftue/events/TutorialPageProvider;

    return-void
.end method


# virtual methods
.method public getTutorialPageProvider()Lcom/amazon/kedu/ftue/events/TutorialPageProvider;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kedu/ftue/events/Tutorial;->tutorialPageProvider:Lcom/amazon/kedu/ftue/events/TutorialPageProvider;

    return-object v0
.end method
