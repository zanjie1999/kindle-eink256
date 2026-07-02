.class Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;
.super Ljava/lang/Object;
.source "DeckOverviewActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 136
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 143
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->onClickedDoneEditingDeckTitle(Landroid/view/View;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p2}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$200(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
