.class Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;
.super Ljava/lang/Object;
.source "EditCardActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/EditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kedu/flashcards/EditCardActivity;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/EditCardActivity$1;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;-><init>(Lcom/amazon/kedu/flashcards/EditCardActivity;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 626
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1700(Lcom/amazon/kedu/flashcards/EditCardActivity;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kedu/flashcards/R$id;->front_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1900()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 627
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1700(Lcom/amazon/kedu/flashcards/EditCardActivity;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kedu/flashcards/R$id;->back_side:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$2000()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 619
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1700(Lcom/amazon/kedu/flashcards/EditCardActivity;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kedu/flashcards/R$id;->front_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1600()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 620
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1700(Lcom/amazon/kedu/flashcards/EditCardActivity;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kedu/flashcards/R$id;->back_side:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1800()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
