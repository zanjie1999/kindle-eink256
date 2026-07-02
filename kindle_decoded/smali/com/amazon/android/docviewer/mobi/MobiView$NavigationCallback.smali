.class Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;
.super Ljava/lang/Object;
.source "MobiView.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationCallback"
.end annotation


# instance fields
.field swipePastEnd:Z

.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiView;


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiView;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;->this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 441
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;->swipePastEnd:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiView;Lcom/amazon/android/docviewer/mobi/MobiView$1;)V
    .locals 0

    .line 439
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;-><init>(Lcom/amazon/android/docviewer/mobi/MobiView;)V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;->this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->access$200(Lcom/amazon/android/docviewer/mobi/MobiView;)V

    .line 450
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;->this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

    iget-object p1, p1, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;->this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;->swipePastEnd:Z

    invoke-static {p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->access$300(Lcom/amazon/android/docviewer/mobi/MobiView;Z)V

    :cond_0
    return-void
.end method
