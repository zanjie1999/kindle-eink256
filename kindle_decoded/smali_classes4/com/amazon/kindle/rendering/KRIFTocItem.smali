.class public Lcom/amazon/kindle/rendering/KRIFTocItem;
.super Lcom/amazon/android/docviewer/BaseChapterTOCItem;
.source "KRIFTocItem.java"


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/NavigationControlNode;Lcom/amazon/kindle/rendering/KRIFTocItem;)V
    .locals 6

    .line 11
    invoke-interface {p1}, Lcom/amazon/krf/platform/NavigationControlNode;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/krf/platform/NavigationControlNode;->getPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v3, v0

    .line 12
    invoke-interface {p1}, Lcom/amazon/krf/platform/NavigationControlNode;->getTOCPreview()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/krf/platform/NavigationControlNode;->getDescription()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/BaseChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/INodeChapterTOCItem;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public gotoLocation()V
    .locals 0

    return-void
.end method
