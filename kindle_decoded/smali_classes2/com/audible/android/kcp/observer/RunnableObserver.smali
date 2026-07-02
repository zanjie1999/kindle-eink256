.class public Lcom/audible/android/kcp/observer/RunnableObserver;
.super Landroid/database/ContentObserver;
.source "RunnableObserver.java"


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    iput-object p1, p0, Lcom/audible/android/kcp/observer/RunnableObserver;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 24
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/audible/android/kcp/observer/RunnableObserver;->runnable:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
