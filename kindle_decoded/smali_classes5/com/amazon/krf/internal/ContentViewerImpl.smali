.class public Lcom/amazon/krf/internal/ContentViewerImpl;
.super Lcom/amazon/krf/internal/NativeObject;
.source "ContentViewerImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/ContentViewer;


# instance fields
.field private mInitialized:Z

.field private mKrfBook:Lcom/amazon/krf/internal/KRFBookImpl;

.field private mNavigationController:Lcom/amazon/krf/internal/NavigationControllerImpl;


# direct methods
.method constructor <init>(JLcom/amazon/krf/internal/KRFBookImpl;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/internal/NativeObject;-><init>(J)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mNavigationController:Lcom/amazon/krf/internal/NavigationControllerImpl;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mInitialized:Z

    .line 20
    iput-object p3, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mKrfBook:Lcom/amazon/krf/internal/KRFBookImpl;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mNavigationController:Lcom/amazon/krf/internal/NavigationControllerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->dispose()V

    .line 40
    iput-object v1, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mNavigationController:Lcom/amazon/krf/internal/NavigationControllerImpl;

    .line 42
    :cond_0
    iput-object v1, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mKrfBook:Lcom/amazon/krf/internal/KRFBookImpl;

    .line 44
    invoke-super {p0}, Lcom/amazon/krf/internal/NativeObject;->dispose()V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/internal/ContentViewerImpl;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-super {p0}, Lcom/amazon/krf/internal/NativeObject;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/amazon/krf/internal/NativeObject;->finalize()V

    .line 53
    throw v0
.end method

.method public getBook()Lcom/amazon/krf/platform/KRFBook;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mKrfBook:Lcom/amazon/krf/internal/KRFBookImpl;

    return-object v0
.end method

.method public bridge synthetic getHandle()J
    .locals 2

    .line 8
    invoke-super {p0}, Lcom/amazon/krf/internal/NativeObject;->getHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNavigationController()Lcom/amazon/krf/platform/Navigable;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mNavigationController:Lcom/amazon/krf/internal/NavigationControllerImpl;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/amazon/krf/internal/NavigationControllerImpl;

    invoke-direct {v0, p0}, Lcom/amazon/krf/internal/NavigationControllerImpl;-><init>(Lcom/amazon/krf/internal/ContentViewerImpl;)V

    iput-object v0, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mNavigationController:Lcom/amazon/krf/internal/NavigationControllerImpl;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mNavigationController:Lcom/amazon/krf/internal/NavigationControllerImpl;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mInitialized:Z

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/krf/internal/ContentViewerImpl;->nativeInitialize(J)V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/amazon/krf/internal/ContentViewerImpl;->mInitialized:Z

    :cond_0
    return-void
.end method

.method native nativeInitialize(J)V
.end method
