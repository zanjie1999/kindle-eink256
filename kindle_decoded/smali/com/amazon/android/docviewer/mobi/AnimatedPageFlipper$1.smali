.class Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$1;
.super Ljava/lang/Object;
.source "AnimatedPageFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->realOnAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$1;->this$0:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$1;->this$0:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->access$000(Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;)V

    return-void
.end method
