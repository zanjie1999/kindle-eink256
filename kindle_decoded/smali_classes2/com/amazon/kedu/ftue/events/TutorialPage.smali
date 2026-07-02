.class public Lcom/amazon/kedu/ftue/events/TutorialPage;
.super Ljava/lang/Object;
.source "TutorialPage.java"


# instance fields
.field private imageResource:Ljava/lang/String;

.field private remoteImageResource:Ljava/lang/String;

.field private textResourceId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/amazon/kedu/ftue/events/TutorialPage;->textResourceId:I

    .line 49
    iput-object p2, p0, Lcom/amazon/kedu/ftue/events/TutorialPage;->imageResource:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/amazon/kedu/ftue/events/TutorialPage;->remoteImageResource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageResource()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kedu/ftue/events/TutorialPage;->imageResource:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteImageResourceId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kedu/ftue/events/TutorialPage;->remoteImageResource:Ljava/lang/String;

    return-object v0
.end method

.method public getTextResourceId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/amazon/kedu/ftue/events/TutorialPage;->textResourceId:I

    return v0
.end method
