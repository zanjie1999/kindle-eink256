.class Lcom/amazon/kindle/krx/reader/BookNavigator$2;
.super Ljava/lang/Object;
.source "BookNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/BookNavigator;->updateMostRecentPageReadPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

.field final synthetic val$allowExperienceChange:Z

.field final synthetic val$position:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/BookNavigator;Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$2;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$2;->val$position:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-boolean p3, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$2;->val$allowExperienceChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$2;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$100(Lcom/amazon/kindle/krx/reader/BookNavigator;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$2;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v1}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$200(Lcom/amazon/kindle/krx/reader/BookNavigator;)V

    .line 179
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$2;->val$position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    iget-boolean v2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$2;->val$allowExperienceChange:Z

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(IZ)V

    :cond_0
    return-void
.end method
