.class Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$2;
.super Ljava/lang/Object;
.source "PageElementObjectSelectionModel.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IPageElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->createOffPageElement(I)Lcom/amazon/android/docviewer/IPageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$word:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;)V
    .locals 0

    .line 1243
    iput-object p2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$2;->val$word:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    .line 1261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This element is created for tracking IDs and does not support covering rectangles."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEndId()I
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$2;->val$word:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    iget v0, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$2;->val$word:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    iget v0, v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
