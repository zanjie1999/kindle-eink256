.class public Lcom/amazon/kcp/library/CounterRegisteredEvent;
.super Ljava/lang/Object;
.source "CounterRegisteredEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final registeredKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/library/CounterRegisteredEvent;->registeredKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRegisteredKey()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/CounterRegisteredEvent;->registeredKey:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
