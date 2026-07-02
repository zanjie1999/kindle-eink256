.class Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$3;
.super Ljava/lang/Object;
.source "WordWiseDecorationProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->createDecorationsForPage(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)I
    .locals 2

    .line 246
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getDifficulty()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getDifficulty()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getDifficulty()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getDifficulty()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 242
    check-cast p1, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    check-cast p2, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$3;->compare(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)I

    move-result p1

    return p1
.end method
