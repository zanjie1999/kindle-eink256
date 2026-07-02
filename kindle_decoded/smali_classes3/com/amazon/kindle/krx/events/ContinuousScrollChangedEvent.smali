.class public Lcom/amazon/kindle/krx/events/ContinuousScrollChangedEvent;
.super Ljava/lang/Object;
.source "ContinuousScrollChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field public final continuousScrollEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/events/ContinuousScrollChangedEvent;->continuousScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
