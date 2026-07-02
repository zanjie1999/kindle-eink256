.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$SingletonHolder;
.super Ljava/lang/Object;
.source "ThumbnailScrubberLayoutDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;-><init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$1;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$SingletonHolder;->INSTANCE:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator$SingletonHolder;->INSTANCE:Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;

    return-object v0
.end method
