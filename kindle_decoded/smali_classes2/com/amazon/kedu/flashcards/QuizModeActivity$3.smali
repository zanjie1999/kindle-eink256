.class Lcom/amazon/kedu/flashcards/QuizModeActivity$3;
.super Landroid/text/style/MetricAffectingSpan;
.source "QuizModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/QuizModeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

.field final synthetic val$readerUITypeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;Landroid/graphics/Typeface;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$3;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$3;->val$readerUITypeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/QuizModeActivity$3;->updateMeasureState(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$3;->val$readerUITypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    return-void
.end method
