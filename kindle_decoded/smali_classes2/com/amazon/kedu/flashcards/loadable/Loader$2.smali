.class Lcom/amazon/kedu/flashcards/loadable/Loader$2;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/loadable/Loader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/loadable/Loader;

.field final synthetic val$loadable:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/loadable/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/Loader$2;->this$0:Lcom/amazon/kedu/flashcards/loadable/Loader;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/loadable/Loader$2;->val$loadable:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/Loader$2;->this$0:Lcom/amazon/kedu/flashcards/loadable/Loader;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/Loader$2;->val$loadable:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/loadable/Loader;->notifyLoadingCompleted(Ljava/lang/Object;)V

    return-void
.end method
