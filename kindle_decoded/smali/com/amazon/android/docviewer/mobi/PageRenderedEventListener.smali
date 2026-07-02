.class public Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;
.super Ljava/lang/Object;
.source "PageRenderedEventListener.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;


# instance fields
.field private final mCallbacksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/foundation/ICallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;->mCallbacksList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public currentPageUpdated(IZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 38
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;->mCallbacksList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/foundation/ICallback;

    .line 41
    invoke-interface {p2}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;->mCallbacksList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public nextPageUpdated(IZ)V
    .locals 0

    return-void
.end method

.method public previousPageUpdated(IZ)V
    .locals 0

    return-void
.end method

.method public registerOneShotCallback(Lcom/amazon/foundation/ICallback;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;->mCallbacksList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderedEventListener;->mCallbacksList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
