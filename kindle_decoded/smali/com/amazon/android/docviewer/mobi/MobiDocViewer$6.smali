.class Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;
.super Ljava/lang/Object;
.source "MobiDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->onViewDrawn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 0

    .line 2107
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 2110
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iget-boolean v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_mobiViewInitialDrawn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2111
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "DebugSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "EnableAppStartTrace"

    .line 2113
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->onInitialDraw()V

    .line 2119
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$800(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2120
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result v2

    invoke-static {v0, v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$900(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;I)V

    .line 2121
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$6;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$1002(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Z)Z

    :cond_2
    return-void
.end method
