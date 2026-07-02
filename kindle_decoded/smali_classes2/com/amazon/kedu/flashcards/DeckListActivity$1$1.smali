.class Lcom/amazon/kedu/flashcards/DeckListActivity$1$1;
.super Ljava/lang/Object;
.source "DeckListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/DeckListActivity$1;->onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kedu/flashcards/DeckListActivity$1;

.field final synthetic val$actionMode:Landroidx/appcompat/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/DeckListActivity$1;Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1$1;->this$1:Lcom/amazon/kedu/flashcards/DeckListActivity$1;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1$1;->val$actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1$1;->this$1:Lcom/amazon/kedu/flashcards/DeckListActivity$1;

    iget-object p1, p1, Lcom/amazon/kedu/flashcards/DeckListActivity$1;->this$0:Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckListActivity;->access$100(Lcom/amazon/kedu/flashcards/DeckListActivity;)Lcom/amazon/kedu/flashcards/DeckListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->deleteSelectedDecks()Z

    .line 109
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1$1;->val$actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void
.end method
