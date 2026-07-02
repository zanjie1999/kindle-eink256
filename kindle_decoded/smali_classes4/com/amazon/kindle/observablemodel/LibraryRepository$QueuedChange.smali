.class Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;
.super Ljava/lang/Object;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/observablemodel/LibraryRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Update:",
        "Ljava/lang/Object;",
        "Change",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TChange",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

.field public update:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUpdate;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUpdate;TChange",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;->this$0:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;->update:Ljava/lang/Object;

    .line 265
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method
