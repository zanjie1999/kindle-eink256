.class public Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;
.super Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;
.source "BaseKindleDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/BaseKindleDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PooledWordIterator"
.end annotation


# instance fields
.field proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

.field final synthetic this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/BaseKindleDocViewer;Lcom/amazon/kindle/search/IKindleWordTokenIterator;)V
    .locals 0

    .line 1167
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/search/BaseKindleWordTokenIterator;-><init>()V

    if-eqz p2, :cond_0

    .line 1172
    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    return-void

    .line 1169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PooledWordIterator cannot have a null proxy IKindleWordTokenIterator!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;)V
    .locals 0

    .line 1164
    invoke-direct {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->destroy()V

    return-void
.end method

.method private declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 1182
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1176
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-object v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->iterators:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized first()Z
    .locals 1

    monitor-enter p0

    .line 1189
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->first()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextInRange(II)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 1

    monitor-enter p0

    .line 1221
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getTextInRange(II)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 1

    monitor-enter p0

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gotoPosition(I)V
    .locals 1

    monitor-enter p0

    .line 1204
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized next()Z
    .locals 1

    monitor-enter p0

    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    .locals 1

    monitor-enter p0

    .line 1216
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->nextNWords(IC)Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->emptyWordToken:Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized previous()Z
    .locals 1

    monitor-enter p0

    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->this$0:Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->proxy:Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
