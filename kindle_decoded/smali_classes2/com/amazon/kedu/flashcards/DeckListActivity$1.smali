.class Lcom/amazon/kedu/flashcards/DeckListActivity$1;
.super Ljava/lang/Object;
.source "DeckListActivity.java"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/DeckListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/DeckListActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    .line 85
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/kedu/flashcards/R$id;->menu_delete_deck:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 87
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    .line 88
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/DeckListActivity;->access$100(Lcom/amazon/kedu/flashcards/DeckListActivity;)Lcom/amazon/kedu/flashcards/DeckListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->getSelectedCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 94
    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_delete_confirm:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 98
    :cond_0
    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_decks_delete_confirm:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_delete_ok:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_delete_ok:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/amazon/kedu/flashcards/DeckListActivity$1$1;

    invoke-direct {v3, p0, p1}, Lcom/amazon/kedu/flashcards/DeckListActivity$1$1;-><init>(Lcom/amazon/kedu/flashcards/DeckListActivity$1;Landroidx/appcompat/view/ActionMode;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 112
    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_delete_cancel:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v1, Lcom/amazon/kedu/flashcards/DeckListActivity$1$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kedu/flashcards/DeckListActivity$1$2;-><init>(Lcom/amazon/kedu/flashcards/DeckListActivity$1;Landroidx/appcompat/view/ActionMode;)V

    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v2

    .line 126
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/amazon/kedu/flashcards/R$id;->menu_edit_deck:I

    if-ne p2, v0, :cond_2

    const-string p2, "KindleFlashcards"

    const-string v0, "DeckOverviewFromAllDecks"

    .line 128
    invoke-static {p2, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-static {p2}, Lcom/amazon/kedu/flashcards/DeckListActivity;->access$100(Lcom/amazon/kedu/flashcards/DeckListActivity;)Lcom/amazon/kedu/flashcards/DeckListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->editSelectedDeck()Z

    move-result p2

    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return p2

    :cond_2
    return v2
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    .line 58
    sget v0, Lcom/amazon/kedu/flashcards/R$menu;->fc_menu_deck_list_selected:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->announceActionModeBar(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckListActivity;->access$100(Lcom/amazon/kedu/flashcards/DeckListActivity;)Lcom/amazon/kedu/flashcards/DeckListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->resetSelectionMode()V

    .line 143
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/DeckListActivity;->access$202(Lcom/amazon/kedu/flashcards/DeckListActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 68
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->menu_edit_deck:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-static {p2}, Lcom/amazon/kedu/flashcards/DeckListActivity;->access$000(Lcom/amazon/kedu/flashcards/DeckListActivity;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 72
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 76
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v0
.end method
