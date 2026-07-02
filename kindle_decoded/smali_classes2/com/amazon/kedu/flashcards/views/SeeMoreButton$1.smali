.class Lcom/amazon/kedu/flashcards/views/SeeMoreButton$1;
.super Ljava/lang/Object;
.source "SeeMoreButton.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/views/SeeMoreButton$ExpandabilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/views/SeeMoreButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/SeeMoreButton;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$1;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandabilityChanged(Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$1;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->access$000(Lcom/amazon/kedu/flashcards/views/SeeMoreButton;)Lcom/amazon/kedu/flashcards/views/SeeMoreButton$Expandable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 20
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SeeMoreButton$1;->this$0:Lcom/amazon/kedu/flashcards/views/SeeMoreButton;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/SeeMoreButton;->access$100(Lcom/amazon/kedu/flashcards/views/SeeMoreButton;)V

    :cond_0
    return-void
.end method
