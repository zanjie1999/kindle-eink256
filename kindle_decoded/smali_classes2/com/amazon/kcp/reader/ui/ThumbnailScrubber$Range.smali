.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;
.super Ljava/lang/Object;
.source "ThumbnailScrubber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field public final end:I

.field public final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->start:I

    .line 1116
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$Range;->end:I

    return-void
.end method
