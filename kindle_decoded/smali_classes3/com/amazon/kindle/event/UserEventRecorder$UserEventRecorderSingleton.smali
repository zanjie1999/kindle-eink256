.class Lcom/amazon/kindle/event/UserEventRecorder$UserEventRecorderSingleton;
.super Ljava/lang/Object;
.source "UserEventRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/UserEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserEventRecorderSingleton"
.end annotation


# static fields
.field static final INSTANCE:Lcom/amazon/kindle/event/UserEventRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/amazon/kindle/event/UserEventRecorder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/event/UserEventRecorder;-><init>(Lcom/amazon/kindle/event/UserEventRecorder$1;)V

    sput-object v0, Lcom/amazon/kindle/event/UserEventRecorder$UserEventRecorderSingleton;->INSTANCE:Lcom/amazon/kindle/event/UserEventRecorder;

    return-void
.end method
