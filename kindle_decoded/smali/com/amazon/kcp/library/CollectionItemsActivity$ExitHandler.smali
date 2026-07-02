.class Lcom/amazon/kcp/library/CollectionItemsActivity$ExitHandler;
.super Landroid/os/Handler;
.source "CollectionItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/CollectionItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExitHandler"
.end annotation


# instance fields
.field private final collectionItemsActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kcp/library/CollectionItemsActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/CollectionItemsActivity;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$ExitHandler;->collectionItemsActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsActivity$ExitHandler;->collectionItemsActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/CollectionItemsActivity;

    if-eqz v0, :cond_0

    .line 106
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
