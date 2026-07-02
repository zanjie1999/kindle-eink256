.class final Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$eventManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BadgedBellIconProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$eventManager$2;->this$0:Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$eventManager$2;->this$0:Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider$eventManager$2;->invoke()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    return-object v0
.end method
