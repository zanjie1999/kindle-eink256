.class Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory$1;
.super Ljava/lang/Object;
.source "SeriesTransitionTaskFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;->createTransitionTask(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;

.field final synthetic val$asin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory$1;->this$0:Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;

    iput-object p2, p0, Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory$1;->val$asin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory$1;->this$0:Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;

    invoke-static {v0}, Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;->access$000(Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory;)Lcom/amazon/sitb/android/transition/TransitionService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/transition/SeriesTransitionTaskFactory$1;->val$asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/transition/TransitionService;->transitionFromFullBook(Ljava/lang/String;)V

    return-void
.end method
