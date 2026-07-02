.class Lcom/amazon/android/docviewer/mobi/NewsstandMobiView$1;
.super Ljava/lang/Object;
.source "NewsstandMobiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;->initializePageFlipper(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandMobiView$1;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandMobiView$1;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->onAnimationFinish()V

    return-void
.end method
