.class Lcom/amazon/kindle/krx/reader/BookNavigator$6;
.super Ljava/lang/Object;
.source "BookNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/BookNavigator;->goToNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/BookNavigator;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$6;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$6;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$100(Lcom/amazon/kindle/krx/reader/BookNavigator;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$6;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v1}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$200(Lcom/amazon/kindle/krx/reader/BookNavigator;)V

    const/4 v1, 0x0

    .line 561
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    :cond_0
    return-void
.end method
