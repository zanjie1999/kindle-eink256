.class public Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;
.super Ljava/lang/Object;
.source "LibraryFragmentLifeCycleEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;
    }
.end annotation


# instance fields
.field m_type:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->m_type:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    return-void
.end method


# virtual methods
.method public getActivityLifecycleType()Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->m_type:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
