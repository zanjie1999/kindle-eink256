.class Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;
.super Ljava/lang/Object;
.source "LineLimitedTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->recheckExpandability(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

.field final synthetic val$maxLines:I


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;->this$0:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    iput p2, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;->val$maxLines:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;->this$0:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 43
    iget v1, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;->val$maxLines:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;->this$0:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;->this$0:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    invoke-virtual {v0, v2}, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->setExpandability(Z)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView$1;->this$0:Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->setExpandability(Z)V

    :goto_0
    return-void
.end method
