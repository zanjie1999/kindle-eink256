.class Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;
.super Ljava/lang/Object;
.source "LibraryContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortableBookID"
.end annotation


# instance fields
.field authorOrder:J

.field authorOrderReversed:J

.field lastAccessed:J

.field publicationDate:J

.field titleOrder:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 538
    iput-wide v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->titleOrder:J

    .line 539
    iput-wide v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->authorOrder:J

    .line 540
    iput-wide v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->authorOrderReversed:J

    .line 541
    iput-wide v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->publicationDate:J

    .line 542
    iput-wide v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;->lastAccessed:J

    return-void
.end method
