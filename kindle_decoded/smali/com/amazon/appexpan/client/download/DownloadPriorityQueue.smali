.class Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;
.super Ljava/util/PriorityQueue;
.source "DownloadPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/PriorityQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
