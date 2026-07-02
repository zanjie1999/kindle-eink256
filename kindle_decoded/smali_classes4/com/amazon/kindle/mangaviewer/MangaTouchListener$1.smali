.class Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;
.super Ljava/lang/Object;
.source "MangaTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

.field final synthetic val$finalEvent:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;Landroid/view/MotionEvent;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;->val$finalEvent:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->access$002(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;Z)Z

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    invoke-static {v0}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->access$100(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->access$200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Single Tap, milliseconds since event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;->val$finalEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;->this$0:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaTouchListener$1;->val$finalEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->singleTapManual(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method
