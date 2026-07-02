.class public Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Reader_IDocumentPageChangedListener()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;-><init>(JZ)V

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J

    iget-boolean v3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v3, v2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPageChangedListener_director_connect(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;JZZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IDocumentPageChangedListener(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->delete()V

    return-void
.end method

.method public onPageChanged()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPageChangedListener_onPageChanged(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;)V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPageChangedListener_change_ownership(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCMemOwn:Z

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentPageChangedListener_change_ownership(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPageChangedListener;JZ)V

    return-void
.end method
