.class Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$1;
.super Ljava/lang/Object;
.source "MarkAsReadingWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->failure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$1;->this$1:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback$1;->this$1:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;

    iget-object v0, v0, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget$MarkAsReadingOdotCallback;->this$0:Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;->access$400(Lcom/amazon/readingactions/ui/widget/MarkAsReadingWidget;Z)V

    return-void
.end method
