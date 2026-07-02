.class public final Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;
.super Ljava/lang/Object;
.source "BellCountEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final type:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;->type:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    return-void
.end method


# virtual methods
.method public final getType()Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/event/BellCountEvent;->type:Lcom/amazon/kindle/inapp/notifications/event/BellCountEventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
