.class public final Lcom/amazon/kcp/application/DeeplinkEvent;
.super Ljava/lang/Object;
.source "DeeplinkEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/DeeplinkEvent$Type;
    }
.end annotation


# instance fields
.field private final type:Lcom/amazon/kcp/application/DeeplinkEvent$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/DeeplinkEvent$Type;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/DeeplinkEvent;->type:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    return-void
.end method


# virtual methods
.method public final getType()Lcom/amazon/kcp/application/DeeplinkEvent$Type;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/application/DeeplinkEvent;->type:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
