.class Lcom/audible/hushpuppy/sync/SyncData$1;
.super Ljava/lang/Object;
.source "SyncData.java"

# interfaces
.implements Lcom/audible/hushpuppy/sync/SyncDataContent$IErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/sync/SyncData;-><init>(Lcom/audible/hushpuppy/sync/SyncData$HasHeader;Lcom/audible/hushpuppy/sync/SyncDataContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/sync/SyncData;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/sync/SyncData;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/audible/hushpuppy/sync/SyncData$1;->this$0:Lcom/audible/hushpuppy/sync/SyncData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/audible/hushpuppy/sync/SyncData$1;->this$0:Lcom/audible/hushpuppy/sync/SyncData;

    invoke-static {p1}, Lcom/audible/hushpuppy/sync/SyncData;->access$000(Lcom/audible/hushpuppy/sync/SyncData;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/sync/SyncData$1;->this$0:Lcom/audible/hushpuppy/sync/SyncData;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;->error(Ljava/lang/String;)V

    return-void
.end method
