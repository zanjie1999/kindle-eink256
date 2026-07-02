.class Lcom/amazon/kedu/flashcards/QuizModeActivity$2;
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

    .line 138
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$2;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "KindleFlashcards"

    const-string v0, "StartDeckAgainFromQuizEnd"

    .line 142
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->markQuizOpenedFromStartOverButtonClicked()V

    .line 144
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$2;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->All:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->access$200(Lcom/amazon/kedu/flashcards/QuizModeActivity;Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    return-void
.end method
