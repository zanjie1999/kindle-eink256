.class public final Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$orientationEventListener$1;
.super Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;
.source "ReadingActionsFragment.kt"


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
.method constructor <init>(Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;Lcom/amazon/kindle/krx/events/IMessageQueue;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$orientationEventListener$1;->this$0:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    iput-object p2, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$orientationEventListener$1;->$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {p0, p3}, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/amazon/readingactions/helpers/OrientationEventListenerBase;->hasOrientationChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$orientationEventListener$1;->this$0:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {p1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->getTitleWidget()Lcom/amazon/readingactions/ui/widget/TitleWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/TitleWidget;->onOrientationChange()V

    .line 45
    iget-object p1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$orientationEventListener$1;->$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;

    iget-object v1, p0, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment$createListeners$orientationEventListener$1;->this$0:Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;

    invoke-virtual {v1}, Lcom/amazon/readingactions/bottomsheet/ReadingActionsFragment;->calculateMinHeight()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/bottomsheet/events/ChangeHeightEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
