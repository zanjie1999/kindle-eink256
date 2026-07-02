.class Lcom/amazon/android/docviewer/mobi/MobiView$2;
.super Ljava/lang/Object;
.source "MobiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiView;->onAnimationFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

.field final synthetic val$pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiView;Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiView$2;->val$pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView$2;->val$pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiView;->access$100(Lcom/amazon/android/docviewer/mobi/MobiView;Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    return-void
.end method
