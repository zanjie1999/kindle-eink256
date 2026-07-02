.class Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "PdfTileCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfTileCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TilesForOneZoomLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/amazon/android/docviewer/pdf/PdfTile;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;Lcom/amazon/android/docviewer/pdf/PdfTileCollection$1;)V
    .locals 0

    .line 646
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;)V

    return-void
.end method

.method private final position(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method getBytesUsed()J
    .locals 5

    .line 660
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/pdf/PdfTile;

    .line 661
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBytesUsed()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method getColumnFromKey(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method getRowFromKey(I)I
    .locals 0

    shr-int/lit8 p1, p1, 0x10

    return p1
.end method

.method getTile(II)Lcom/amazon/android/docviewer/pdf/PdfTile;
    .locals 0

    .line 671
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->position(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfTile;

    return-object p1
.end method

.method putTile(Lcom/amazon/android/docviewer/pdf/PdfTile;II)V
    .locals 0

    .line 667
    invoke-direct {p0, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->position(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
