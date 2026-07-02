.class final Lcom/amazon/kindle/rendering/KRIFUIEventHandler$1;
.super Ljava/lang/Object;
.source "KRIFUIEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->publishEvent(Lcom/amazon/kindle/rendering/KRIFUIEvent;Lcom/amazon/kindle/rendering/KRIFView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Lcom/amazon/kindle/rendering/KRIFUIEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFUIEvent;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$1;->val$event:Lcom/amazon/kindle/rendering/KRIFUIEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 177
    invoke-static {}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler;->access$100()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$1;->val$event:Lcom/amazon/kindle/rendering/KRIFUIEvent;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
