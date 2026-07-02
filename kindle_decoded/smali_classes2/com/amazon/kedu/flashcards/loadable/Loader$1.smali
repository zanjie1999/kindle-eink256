.class Lcom/amazon/kedu/flashcards/loadable/Loader$1;
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


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/loadable/Loader;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/Loader$1;->this$0:Lcom/amazon/kedu/flashcards/loadable/Loader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/Loader$1;->this$0:Lcom/amazon/kedu/flashcards/loadable/Loader;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/loadable/Loader;->notifyLoadingStarted()V

    return-void
.end method
