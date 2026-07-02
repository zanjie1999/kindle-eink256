.class Lcom/amazon/android/docviewer/animation/AnimatedPageContainer$1;
.super Ljava/lang/Object;
.source "AnimatedPageContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->realOnAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer$1;->this$0:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer$1;->this$0:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->access$000(Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;)V

    return-void
.end method
