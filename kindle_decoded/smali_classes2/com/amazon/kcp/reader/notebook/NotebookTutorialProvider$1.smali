.class Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$1;
.super Lcom/amazon/kedu/ftue/events/TutorialPageProvider;
.source "NotebookTutorialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->registerNotebookFTUETutorial(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$notebookTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

.field final synthetic val$reflowableNotebookTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V
    .locals 0

    .line 73
    iput-object p2, p0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$1;->val$reflowableNotebookTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

    iput-object p3, p0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$1;->val$notebookTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

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

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/EventContext;->isReflowable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$1;->val$reflowableNotebookTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 77
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$1;->val$notebookTutorialPage:Lcom/amazon/kedu/ftue/events/TutorialPage;

    .line 78
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
