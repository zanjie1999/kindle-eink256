.class Lcom/amazon/kedu/flashcards/QuizModeActivity$1;
.super Ljava/lang/Object;
.source "QuizModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/QuizModeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$1;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$1;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->access$100(Lcom/amazon/kedu/flashcards/QuizModeActivity;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getIncorrectCount()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "KindleFlashcards"

    const-string v0, "StartDeckWithIncorrect"

    .line 131
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->markQuizOpenedFromStudyIncorrectButtonClicked()V

    .line 133
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$1;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->Incorrect:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->access$200(Lcom/amazon/kedu/flashcards/QuizModeActivity;Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    :cond_0
    return-void
.end method
