.class Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;
.super Ljava/lang/Object;
.source "BorrowBookTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/payoff/BorrowBookTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 73
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v0}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$000(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/bookwizard/service/PayoffRec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/PayoffRec;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v1}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$100(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$200()J

    move-result-wide v3

    const-string v5, "BorrowSuccessRate."

    const-string v6, "GlideOperation"

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v1, v3

    if-ltz v9, :cond_0

    .line 75
    invoke-static {}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$300()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    const-string v0, "Hit max retry timeout of 60 seconds for %s, stopping retries"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v1}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$400(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/bookwizard/glide/ActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v7}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v1}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$500(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 81
    invoke-static {}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$600()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v4}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$708(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)I

    move-result v4

    sub-int/2addr v4, v8

    int-to-long v9, v4

    mul-long v2, v2, v9

    invoke-static {}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$800()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 82
    iget-object v4, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v4}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$100(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v9, v2

    long-to-int v10, v9

    invoke-static {v4, v10}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$102(Lcom/amazon/bookwizard/payoff/BorrowBookTask;I)I

    const/4 v4, 0x2

    if-nez v1, :cond_1

    .line 85
    invoke-static {}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$300()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v5}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$700(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)I

    move-result v5

    sub-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    const-string v0, "Attempt %d to download %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v0}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$900(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/bookwizard/store/BookWrapper;

    iget-object v4, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v4}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$000(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/bookwizard/service/PayoffRec;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-direct {v1, v4, v5}, Lcom/amazon/bookwizard/store/BookWrapper;-><init>(Lcom/amazon/bookwizard/service/PayoffRec;Lcom/amazon/kindle/krx/content/ContentType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->downloadBook(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v0}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$1000(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 92
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    .line 93
    sget-object v9, Lcom/amazon/bookwizard/payoff/BorrowBookTask$2;->$SwitchMap$com$amazon$kindle$krx$content$IBook$DownloadState:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v8, :cond_3

    const/4 v5, 0x3

    if-eq v9, v4, :cond_2

    if-eq v9, v5, :cond_2

    .line 106
    invoke-static {}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$300()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    const-string v0, "Waiting for %s, state=%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v0}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$1000(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 101
    :cond_2
    invoke-static {}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$300()Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v9}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$700(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)I

    move-result v9

    sub-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    aput-object v0, v5, v8

    aput-object v1, v5, v4

    const-string v0, "Attempt %d to download %s, state=%s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v0}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$900(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/bookwizard/store/BookWrapper;

    iget-object v4, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v4}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$000(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/bookwizard/service/PayoffRec;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-direct {v1, v4, v5}, Lcom/amazon/bookwizard/store/BookWrapper;-><init>(Lcom/amazon/bookwizard/service/PayoffRec;Lcom/amazon/kindle/krx/content/ContentType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/store/IStoreManager;->downloadBook(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v0}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$1000(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 95
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BorrowSuccess."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v2}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$400(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/bookwizard/glide/ActionType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/bookwizard/payoff/BorrowBookTask$1;->this$0:Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    invoke-static {v2}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$400(Lcom/amazon/bookwizard/payoff/BorrowBookTask;)Lcom/amazon/bookwizard/glide/ActionType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v8}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    invoke-static {}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;->access$300()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    const-string v0, "Found %s in library, not requesting download."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
