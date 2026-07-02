.class Lcom/amazon/sitb/android/model/RecentlyCanceledState$1;
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

.field final synthetic val$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/model/RecentlyCanceledState;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState$1;->this$0:Lcom/amazon/sitb/android/model/RecentlyCanceledState;

    iput-object p2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState$1;->val$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState$1;->val$messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/RecentCancelTimoutEvent;

    iget-object v2, p0, Lcom/amazon/sitb/android/model/RecentlyCanceledState$1;->this$0:Lcom/amazon/sitb/android/model/RecentlyCanceledState;

    iget-object v2, v2, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/event/RecentCancelTimoutEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishInternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
