.class Lcom/amazon/kindle/event/RedrivableEventProvider$2;
.super Ljava/lang/Object;
.source "RedrivableEventProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/event/RedrivableEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

.field final synthetic val$redrivableEvent:Lcom/amazon/kindle/event/Event;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/event/RedrivableEventProvider;Lcom/amazon/kindle/event/Event;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$2;->this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

    iput-object p2, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$2;->val$redrivableEvent:Lcom/amazon/kindle/event/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$2;->this$0:Lcom/amazon/kindle/event/RedrivableEventProvider;

    iget-object v1, p0, Lcom/amazon/kindle/event/RedrivableEventProvider$2;->val$redrivableEvent:Lcom/amazon/kindle/event/Event;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/event/RedrivableEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;Z)V

    return-void
.end method
