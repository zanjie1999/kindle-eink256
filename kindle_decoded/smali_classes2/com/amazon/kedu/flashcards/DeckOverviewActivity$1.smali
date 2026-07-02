.class Lcom/amazon/kedu/flashcards/DeckOverviewActivity$1;
.super Ljava/lang/Object;
.source "DeckOverviewActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$100(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$100(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method
