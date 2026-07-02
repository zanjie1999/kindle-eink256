.class Lcom/amazon/kedu/flashcards/views/EmptyView$1;
.super Ljava/lang/Object;
.source "EmptyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/EmptyView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/EmptyView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/EmptyView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/EmptyView$1;->this$0:Lcom/amazon/kedu/flashcards/views/EmptyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/EmptyView$1;->this$0:Lcom/amazon/kedu/flashcards/views/EmptyView;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/views/EmptyView;->onClickAdd(Landroid/view/View;)V

    return-void
.end method
