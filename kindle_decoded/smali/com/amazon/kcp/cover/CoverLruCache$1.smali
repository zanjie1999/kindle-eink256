.class Lcom/amazon/kcp/cover/CoverLruCache$1;
.super Ljava/lang/Object;
.source "CoverLruCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/CoverLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/CoverLruCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CoverLruCache;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLruCache$1;->this$0:Lcom/amazon/kcp/cover/CoverLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;)I
    .locals 2

    const v0, 0x7fffffff

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 39
    :cond_0
    iget p1, p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverLruCache$1;->this$0:Lcom/amazon/kcp/cover/CoverLruCache;

    .line 40
    invoke-static {v1}, Lcom/amazon/kcp/cover/CoverLruCache;->access$000(Lcom/amazon/kcp/cover/CoverLruCache;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    iget p2, p2, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache$1;->this$0:Lcom/amazon/kcp/cover/CoverLruCache;

    .line 42
    invoke-static {v0}, Lcom/amazon/kcp/cover/CoverLruCache;->access$000(Lcom/amazon/kcp/cover/CoverLruCache;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_1
    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    check-cast p2, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/cover/CoverLruCache$1;->compare(Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;)I

    move-result p1

    return p1
.end method
