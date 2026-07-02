.class Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;
.super Ljava/lang/Object;
.source "HeaderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/speedreading/amplifier/HeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHeaderTTRRunnable"
.end annotation


# static fields
.field private static final WAIT_TIME:J = 0x1f4L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final pageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field final synthetic this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const-class p1, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->TAG:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 185
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->pageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x1f4

    .line 192
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 194
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->pageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$100(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Lcom/amazon/kindle/speedreading/toc/ChapterItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/toc/ChapterItem;->getChapterEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getTimeToReadManager()Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadManager;->getTimeToRead(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadResult;

    move-result-object v2

    .line 204
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadResult;->getTimeToReadInSeconds()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    const/4 v3, 0x0

    .line 210
    iget-object v4, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v4}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$200(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->getClips()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;

    .line 212
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->isWithinPage(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    invoke-virtual {v5}, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    .line 215
    invoke-virtual {v5}, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    sub-int/2addr v6, v5

    add-int/2addr v3, v6

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadResult;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadResult;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 222
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadResult;->getTimeToReadInSeconds()J

    move-result-wide v1

    int-to-long v3, v3

    mul-long v1, v1, v3

    int-to-long v3, v0

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    const-wide/16 v3, 0x3c

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    move-wide v1, v3

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$300(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;J)Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$400(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable$1;-><init>(Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$400(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable$2;-><init>(Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$500(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring page since it was dismissed within 500 ms"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 258
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->this$0:Lcom/amazon/kindle/speedreading/amplifier/HeaderController;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/amplifier/HeaderController;->access$500(Lcom/amazon/kindle/speedreading/amplifier/HeaderController;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/amplifier/HeaderController$UpdateHeaderTTRRunnable;->TAG:Ljava/lang/String;

    const-string v3, "Unable to determine TTR string for amplify header"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method
