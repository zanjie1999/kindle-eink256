.class Lcom/amazon/android/docviewer/mobi/MobiView$1;
.super Ljava/lang/Object;
.source "MobiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiView;->initializePageFlipper(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiView;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiView;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView$1;->this$0:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->onAnimationFinish()V

    return-void
.end method
