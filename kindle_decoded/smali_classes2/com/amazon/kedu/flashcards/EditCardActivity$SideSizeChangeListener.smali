.class Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;
.super Ljava/lang/Object;
.source "EditCardActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/EditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SideSizeChangeListener"
.end annotation


# instance fields
.field private side:Lcom/amazon/kedu/flashcards/utils/Side;

.field final synthetic this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;->side:Lcom/amazon/kedu/flashcards/utils/Side;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 579
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;->side:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1300(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 581
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1400(Lcom/amazon/kedu/flashcards/EditCardActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p3, p5

    sub-int/2addr p7, p9

    if-eq p3, p7, :cond_1

    .line 587
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    iget-object p2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;->side:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-static {p1, p2}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1500(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/utils/Side;)V

    .line 589
    :cond_1
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;->this$0:Lcom/amazon/kedu/flashcards/EditCardActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kedu/flashcards/EditCardActivity;->access$1402(Lcom/amazon/kedu/flashcards/EditCardActivity;Z)Z

    :cond_2
    return-void
.end method
