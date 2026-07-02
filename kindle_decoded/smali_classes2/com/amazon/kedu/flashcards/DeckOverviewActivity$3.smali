.class Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;
.super Ljava/lang/Object;
.source "DeckOverviewActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 158
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 162
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$300(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/amazon/kedu/flashcards/R$id;->deck_title_done_editing_button:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 168
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$300(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 174
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$300(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_2
    :goto_1
    return-void
.end method
