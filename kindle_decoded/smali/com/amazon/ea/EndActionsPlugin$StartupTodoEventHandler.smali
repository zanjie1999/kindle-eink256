.class Lcom/amazon/ea/EndActionsPlugin$StartupTodoEventHandler;
.super Ljava/lang/Object;
.source "EndActionsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/EndActionsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupTodoEventHandler"
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/ea/EndActionsPlugin;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/amazon/ea/EndActionsPlugin$StartupTodoEventHandler;-><init>(Lcom/amazon/ea/EndActionsPlugin;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 1

    .line 355
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getTodoEventHandler()Lcom/amazon/ea/TodoEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ea/TodoEventHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result p1

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 1

    .line 350
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getTodoEventHandler()Lcom/amazon/ea/TodoEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ea/TodoEventHandler;->supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result p1

    return p1
.end method
