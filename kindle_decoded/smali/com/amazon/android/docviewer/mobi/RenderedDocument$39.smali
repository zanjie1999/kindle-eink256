.class Lcom/amazon/android/docviewer/mobi/RenderedDocument$39;
.super Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;
.source "RenderedDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/RenderedDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$39;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-direct {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$39;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$4100(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplatePositionShiftDirectionArgsCallback;->execute(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    .line 1062
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$39;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$400(Lcom/amazon/android/docviewer/mobi/RenderedDocument;I)V

    .line 1064
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$39;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/RenderedDocument$39;->this$0:Lcom/amazon/android/docviewer/mobi/RenderedDocument;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/RenderedDocument;->access$3800(Lcom/amazon/android/docviewer/mobi/RenderedDocument;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/IKRFListener;

    .line 1066
    invoke-interface {v2, p1, p2}, Lcom/amazon/android/docviewer/mobi/IKRFListener;->onTableShift(Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    goto :goto_0

    .line 1068
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
