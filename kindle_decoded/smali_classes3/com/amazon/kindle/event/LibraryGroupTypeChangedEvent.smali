.class public Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;
.super Ljava/lang/Object;
.source "LibraryGroupTypeChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private eventSource:Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;->eventSource:Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    return-void
.end method


# virtual methods
.method public getEventSource()Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;->eventSource:Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
