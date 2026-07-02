.class public Lcom/amazon/kindle/observablemodel/AndroidHandlerWrapper;
.super Ljava/lang/Object;
.source "AndroidHandlerWrapper.java"

# interfaces
.implements Lcom/amazon/kindle/observablemodel/IHandler;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/AndroidHandlerWrapper;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/AndroidHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
