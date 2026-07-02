.class Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandCrossReplicaLink;
.super Ljava/lang/Object;
.source "MobiPeriodicalTOC.java"

# interfaces
.implements Lcom/amazon/nwstd/toc/ICrossReplicaLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewsstandCrossReplicaLink"
.end annotation


# instance fields
.field private m_rects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_replicaPage:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC;I)V
    .locals 0

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 732
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandCrossReplicaLink;->m_rects:Ljava/util/ArrayList;

    .line 736
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandCrossReplicaLink;->m_replicaPage:I

    .line 737
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandCrossReplicaLink;->m_rects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addRectangle(Landroid/graphics/RectF;)V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandCrossReplicaLink;->m_rects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
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

    .line 749
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandCrossReplicaLink;->m_rects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getReplicaPage()I
    .locals 1

    .line 743
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$NewsstandCrossReplicaLink;->m_replicaPage:I

    return v0
.end method
