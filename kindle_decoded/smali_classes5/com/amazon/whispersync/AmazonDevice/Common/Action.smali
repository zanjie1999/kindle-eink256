.class public abstract Lcom/amazon/whispersync/AmazonDevice/Common/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field private mDelegate:Lcom/amazon/whispersync/AmazonDevice/Common/IActionDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected invokeActionComplete()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/Action;->mDelegate:Lcom/amazon/whispersync/AmazonDevice/Common/IActionDelegate;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/IActionDelegate;->actionComplete(Lcom/amazon/whispersync/AmazonDevice/Common/Action;)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lcom/amazon/whispersync/AmazonDevice/Common/IActionDelegate;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/Action;->mDelegate:Lcom/amazon/whispersync/AmazonDevice/Common/IActionDelegate;

    return-void
.end method

.method public abstract start()V
.end method
