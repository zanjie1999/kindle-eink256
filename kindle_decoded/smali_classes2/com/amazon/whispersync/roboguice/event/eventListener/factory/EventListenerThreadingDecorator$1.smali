.class synthetic Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator$1;
.super Ljava/lang/Object;
.source "EventListenerThreadingDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$roboguice$event$EventThread:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    invoke-static {}, Lcom/amazon/whispersync/roboguice/event/EventThread;->values()[Lcom/amazon/whispersync/roboguice/event/EventThread;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator$1;->$SwitchMap$roboguice$event$EventThread:[I

    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/roboguice/event/EventThread;->UI:Lcom/amazon/whispersync/roboguice/event/EventThread;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/whispersync/roboguice/event/eventListener/factory/EventListenerThreadingDecorator$1;->$SwitchMap$roboguice$event$EventThread:[I

    sget-object v1, Lcom/amazon/whispersync/roboguice/event/EventThread;->BACKGROUND:Lcom/amazon/whispersync/roboguice/event/EventThread;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
