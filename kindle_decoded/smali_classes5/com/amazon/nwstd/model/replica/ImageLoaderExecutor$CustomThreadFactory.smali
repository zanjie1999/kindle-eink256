.class Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$CustomThreadFactory;
.super Ljava/lang/Object;
.source "ImageLoaderExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomThreadFactory"
.end annotation


# instance fields
.field private priority:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$CustomThreadFactory;->priority:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    sget-object p1, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$1;->$SwitchMap$com$amazon$nwstd$model$replica$ImageLoaderExecutor$Priority:[I

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$CustomThreadFactory;->priority:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
