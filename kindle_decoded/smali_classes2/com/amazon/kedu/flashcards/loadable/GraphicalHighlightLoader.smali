.class public Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;
.super Lcom/amazon/kedu/flashcards/loadable/Loader;
.source "GraphicalHighlightLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kedu/flashcards/loadable/Loader<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private end:Lcom/amazon/kindle/krx/reader/IPosition;

.field private height:I

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private start:Lcom/amazon/kindle/krx/reader/IPosition;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p5}, Lcom/amazon/kedu/flashcards/loadable/Loader;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 25
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 26
    iput p3, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->width:I

    .line 27
    iput p4, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->height:I

    .line 28
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->height:I

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    iget v3, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->width:I

    iget v4, p0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->height:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/content/IBookContent;->getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected load()Landroid/graphics/Bitmap;
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic load()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;->load()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
