.class public final Lcom/amazon/kindle/krx/foundation/StartupEvent;
.super Ljava/lang/Object;
.source "StartupEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final type:Lcom/amazon/kindle/krx/foundation/StartupType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/foundation/StartupType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/foundation/StartupEvent;->type:Lcom/amazon/kindle/krx/foundation/StartupType;

    return-void
.end method


# virtual methods
.method public final getType()Lcom/amazon/kindle/krx/foundation/StartupType;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/krx/foundation/StartupEvent;->type:Lcom/amazon/kindle/krx/foundation/StartupType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
