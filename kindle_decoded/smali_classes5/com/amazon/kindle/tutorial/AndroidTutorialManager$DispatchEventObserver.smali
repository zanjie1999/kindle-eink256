.class Lcom/amazon/kindle/tutorial/AndroidTutorialManager$DispatchEventObserver;
.super Ljava/lang/Object;
.source "AndroidTutorialManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/events/IEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/AndroidTutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$DispatchEventObserver;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$DispatchEventObserver;->topic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public notify(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$DispatchEventObserver;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$DispatchEventObserver;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->broadcastEvent(Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method
