.class public Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KBL_Foundation_ITemplateNavigationControlNodeTreeIterator(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->delete()V

    return-void
.end method

.method public getCurrentIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_getCurrentIndex(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItem()Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_getItem(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;-><init>(JZ)V

    return-object v0
.end method

.method public getSiblingsCount()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_getSiblingsCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasChild()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_hasChild(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z

    move-result v0

    return v0
.end method

.method public hasParent()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_hasParent(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z

    move-result v0

    return v0
.end method

.method public moveToFirstChild()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToFirstChild(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z

    move-result v0

    return v0
.end method

.method public moveToFirstSibling()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToFirstSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V

    return-void
.end method

.method public moveToLastSibling()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToLastSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)V

    return-void
.end method

.method public moveToNextSibling()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToNextSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z

    move-result v0

    return v0
.end method

.method public moveToParent()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToParent(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z

    move-result v0

    return v0
.end method

.method public moveToPreviousSibling()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToPreviousSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;)Z

    move-result v0

    return v0
.end method

.method public moveToSibling(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateNavigationControlNodeTreeIterator_moveToSibling(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;J)Z

    move-result p1

    return p1
.end method
