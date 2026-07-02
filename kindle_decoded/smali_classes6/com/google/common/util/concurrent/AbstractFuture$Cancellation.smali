.class final Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cancellation"
.end annotation


# instance fields
.field final cause:Ljava/lang/Throwable;

.field final wasInterrupted:Z


# direct methods
.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    .line 270
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    return-void
.end method
