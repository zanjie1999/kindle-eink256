.class Lcom/amazon/kedu/flashcards/FlashcardsActivity$1;
.super Ljava/lang/Object;
.source "FlashcardsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/FlashcardsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/FlashcardsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/FlashcardsActivity;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$1;->this$0:Lcom/amazon/kedu/flashcards/FlashcardsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/FlashcardsActivity$1;->this$0:Lcom/amazon/kedu/flashcards/FlashcardsActivity;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->onClickedCreateDeck()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
