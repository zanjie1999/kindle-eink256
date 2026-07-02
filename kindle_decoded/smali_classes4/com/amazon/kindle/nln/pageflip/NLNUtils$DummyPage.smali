.class Lcom/amazon/kindle/nln/pageflip/NLNUtils$DummyPage;
.super Ljava/lang/Object;
.source "NLNUtils.java"

# interfaces
.implements Lcom/amazon/kindle/nln/IThumbnailPage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/pageflip/NLNUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyPage"
.end annotation


# instance fields
.field private range:Lcom/amazon/android/docviewer/IntPositionRange;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v0, p1, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NLNUtils$DummyPage;->range:Lcom/amazon/android/docviewer/IntPositionRange;

    return-void
.end method


# virtual methods
.method public getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NLNUtils$DummyPage;->range:Lcom/amazon/android/docviewer/IntPositionRange;

    return-object v0
.end method
