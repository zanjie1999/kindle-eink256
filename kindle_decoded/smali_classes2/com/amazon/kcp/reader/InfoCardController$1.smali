.class Lcom/amazon/kcp/reader/InfoCardController$1;
.super Ljava/lang/Object;
.source "InfoCardController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/InfoCardController;->updateWidgetVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/InfoCardController;

.field final synthetic val$coveringRectangles:Ljava/util/Vector;

.field final synthetic val$selectedText:Ljava/lang/String;

.field final synthetic val$state:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/InfoCardController;Ljava/lang/String;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;Ljava/util/Vector;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/amazon/kcp/reader/InfoCardController$1;->this$0:Lcom/amazon/kcp/reader/InfoCardController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/InfoCardController$1;->val$selectedText:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/InfoCardController$1;->val$state:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    iput-object p4, p0, Lcom/amazon/kcp/reader/InfoCardController$1;->val$coveringRectangles:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/reader/InfoCardController$1;->this$0:Lcom/amazon/kcp/reader/InfoCardController;

    iget-object v1, p0, Lcom/amazon/kcp/reader/InfoCardController$1;->val$selectedText:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/reader/InfoCardController$1;->val$state:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    iget-object v3, p0, Lcom/amazon/kcp/reader/InfoCardController$1;->val$coveringRectangles:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/reader/InfoCardController;->updateWidgetVisibility(Ljava/lang/String;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;Ljava/util/Vector;)V

    return-void
.end method
