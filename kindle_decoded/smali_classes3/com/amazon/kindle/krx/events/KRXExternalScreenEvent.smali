.class public Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;
.super Ljava/lang/Object;
.source "KRXExternalScreenEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final opened:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;->opened:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;->opened:Z

    return v0
.end method
