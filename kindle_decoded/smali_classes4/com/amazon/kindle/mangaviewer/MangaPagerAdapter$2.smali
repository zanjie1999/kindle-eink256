.class Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "MangaPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    return-void
.end method

.method private updatePosition(I)V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    iget-object v0, v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 499
    invoke-static {}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid page direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while updating position"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$108(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I

    goto :goto_0

    .line 495
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$100(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$202(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;I)I

    .line 496
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    iget-object v0, p1, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDefaultPageID()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$102(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;I)I

    goto :goto_0

    .line 492
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$110(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onBeforeSettingsChange()V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-direct {p0, v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->updatePosition(I)V

    return-void
.end method

.method public onDocViewerBeforePositionChange(I)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->updatePosition(I)V

    return-void
.end method

.method public onNavigationOrSettingsChangeFailed(I)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    iget-object v0, v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 522
    invoke-static {}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid page direction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  on change failure"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$110(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I

    goto :goto_0

    .line 518
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$200(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    .line 519
    invoke-static {v1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$100(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    iget-object v2, v2, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDefaultPageID()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 518
    invoke-static {p1, v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$102(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;I)I

    goto :goto_0

    .line 513
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->access$108(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I

    .line 524
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;->this$0:Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updatePageViews()V

    return-void
.end method
