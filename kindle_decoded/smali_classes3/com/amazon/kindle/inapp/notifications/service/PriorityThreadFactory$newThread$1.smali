.class public final Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory$newThread$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/service/PriorityThreadFactory$newThread$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {p0, p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 21
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 22
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
