.class public final Lcom/amazon/kindle/event/ReaderChromeInterceptEvent;
.super Ljava/lang/Object;
.source "ReaderChromeInterceptEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private shouldIntercept:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShouldIntercept()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/amazon/kindle/event/ReaderChromeInterceptEvent;->shouldIntercept:Z

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final preventIntercept()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/amazon/kindle/event/ReaderChromeInterceptEvent;->shouldIntercept:Z

    return-void
.end method
