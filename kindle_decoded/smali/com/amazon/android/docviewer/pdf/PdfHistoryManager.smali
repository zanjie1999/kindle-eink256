.class public Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;
.super Ljava/lang/Object;
.source "PdfHistoryManager.java"


# static fields
.field private static final MAX_HISTORY_RECORDS:I = 0xa


# instance fields
.field private m_history:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public addPageIndex(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 24
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    :cond_0
    return-void
.end method

.method public getHistoryCount()J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getLastPageIndex()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHistory()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfHistoryManager;->m_history:Ljava/util/Stack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
