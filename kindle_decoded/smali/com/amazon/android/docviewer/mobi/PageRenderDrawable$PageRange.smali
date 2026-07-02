.class public final Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;
.super Ljava/lang/Object;
.source "PageRenderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageRange"
.end annotation


# instance fields
.field public final begin:I

.field public final end:I

.field public final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/IDocumentPage;Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->begin:I

    .line 89
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->end:I

    .line 90
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 102
    const-class v2, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    .line 106
    iget v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->begin:I

    iget v3, p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->begin:I

    if-eq v2, v3, :cond_2

    return v1

    .line 107
    :cond_2
    iget v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->end:I

    iget v3, p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->end:I

    if-eq v2, v3, :cond_3

    return v1

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 114
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->begin:I

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->end:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
