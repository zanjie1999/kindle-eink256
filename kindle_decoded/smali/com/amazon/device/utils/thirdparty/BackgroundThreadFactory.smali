.class public Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;
.super Ljava/lang/Object;
.source "BackgroundThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;->mThreadName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 30
    iget-object p1, p0, Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
