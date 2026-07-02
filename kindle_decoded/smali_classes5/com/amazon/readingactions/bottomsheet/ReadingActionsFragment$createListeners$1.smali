.class public final Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$1;
.super Ljava/lang/Object;
.source "ReadingActionsFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->createListeners(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field final synthetic this$0:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ")V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$1;->this$0:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    iput-object p2, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$1;->$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$1;->this$0:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v0}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$1;->$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;

    iget-object v2, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$1;->this$0:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v2}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->calculateMinHeight()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 v0, 0x1

    return v0
.end method
