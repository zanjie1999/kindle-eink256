.class final Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$onThemeChanged$1;
.super Ljava/lang/Object;
.source "ReadingProgressModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->onThemeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$onThemeChanged$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$onThemeChanged$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$getIndexOfCurDisplayedFooterContentType(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$onThemeChanged$1;->this$0:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {v1, v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->access$updateTextStyleOfReadingProgressOptionView(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;I)V

    return-void
.end method
