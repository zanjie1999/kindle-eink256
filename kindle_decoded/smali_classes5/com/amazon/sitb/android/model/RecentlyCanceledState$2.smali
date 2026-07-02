.class Lcom/amazon/sitb/android/model/RecentlyCanceledState$2;
.super Ljava/lang/Object;
.source "RecentlyCanceledState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/model/RecentlyCanceledState;-><init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/ITaskRunner;Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;Lcom/amazon/sitb/android/services/ClockService;JIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/model/RecentlyCanceledState;

.field final synthetic val$readerActions:Lcom/amazon/sitb/android/ReaderActions;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/model/RecentlyCanceledState;Lcom/amazon/sitb/android/ReaderActions;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState$2;->this$0:Lcom/amazon/sitb/android/model/RecentlyCanceledState;

    iput-object p2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState$2;->val$readerActions:Lcom/amazon/sitb/android/ReaderActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 79
    invoke-static {}, Lcom/amazon/sitb/android/model/RecentlyCanceledState;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState$2;->this$0:Lcom/amazon/sitb/android/model/RecentlyCanceledState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s: Syncing metadata and todo"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState$2;->val$readerActions:Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/ReaderActions;->syncMetadataAndTodo()V

    return-void
.end method
