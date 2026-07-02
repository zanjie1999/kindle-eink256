.class Lcom/amazon/kedu/flashcards/DeckListActivity$1$2;
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
.field final synthetic val$actionMode:Landroidx/appcompat/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/DeckListActivity$1;Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    .line 113
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1$2;->val$actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity$1$2;->val$actionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void
.end method
