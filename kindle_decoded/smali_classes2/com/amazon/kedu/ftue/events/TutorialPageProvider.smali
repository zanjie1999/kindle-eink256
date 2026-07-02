.class public abstract Lcom/amazon/kedu/ftue/events/TutorialPageProvider;
.super Ljava/lang/Object;
.source "TutorialPageProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Lcom/amazon/kedu/ftue/events/EventContext;)Ljava/util/List;
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
.end method
