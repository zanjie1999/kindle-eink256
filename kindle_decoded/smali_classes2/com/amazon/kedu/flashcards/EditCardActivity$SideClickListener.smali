.class Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;
.super Ljava/lang/Object;
.source "EditCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/EditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SideClickListener"
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/EditCardActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;->editText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;->editText:Landroid/widget/EditText;

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method
