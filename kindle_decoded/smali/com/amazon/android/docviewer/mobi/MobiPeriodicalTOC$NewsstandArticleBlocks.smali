.class Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;
.super Ljava/lang/Object;
.source "MobiPeriodicalTOC.java"

# interfaces
.implements Lcom/amazon/nwstd/toc/IArticleBlocks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewsstandArticleBlocks"
.end annotation


# instance fields
.field private m_position:I

.field private m_rects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;I)V
    .locals 0

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 702
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->m_position:I

    const/4 p1, 0x0

    .line 703
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->m_rects:Ljava/util/ArrayList;

    .line 707
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->m_position:I

    .line 708
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->m_rects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addRectangle(Landroid/graphics/RectF;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->m_rects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPosition()I
    .locals 1

    .line 714
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->m_position:I

    return v0
.end method

.method public getRectangles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandArticleBlocks;->m_rects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
