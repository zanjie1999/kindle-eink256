.class public Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;
.super Ljava/lang/Object;
.source "ReaderActivityLifecycleEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;
    }
.end annotation


# instance fields
.field private m_activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private m_isBlocking:Z

.field private m_type:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_isBlocking:Z

    .line 17
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_type:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 22
    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_isBlocking:Z

    .line 23
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_type:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    return-void
.end method


# virtual methods
.method public getActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_activity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-object v0
.end method

.method public getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_type:Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->m_isBlocking:Z

    return v0
.end method
