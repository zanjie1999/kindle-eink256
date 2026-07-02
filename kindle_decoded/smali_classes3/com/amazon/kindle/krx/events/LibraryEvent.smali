.class public Lcom/amazon/kindle/krx/events/LibraryEvent;
.super Ljava/lang/Object;
.source "LibraryEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;
    }
.end annotation


# instance fields
.field private final groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field private final type:Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

.field private final view:Lcom/amazon/kindle/krx/library/LibraryView;

.field private final visibleItemCount:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;Lcom/amazon/kindle/krx/library/LibraryView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/kindle/krx/events/LibraryEvent;-><init>(Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;I)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/library/LibraryGroupType;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/LibraryEvent;->type:Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    .line 48
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/LibraryEvent;->view:Lcom/amazon/kindle/krx/library/LibraryView;

    .line 49
    iput-object p3, p0, Lcom/amazon/kindle/krx/events/LibraryEvent;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 50
    iput p4, p0, Lcom/amazon/kindle/krx/events/LibraryEvent;->visibleItemCount:I

    return-void
.end method


# virtual methods
.method public getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/LibraryEvent;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/LibraryEvent;->type:Lcom/amazon/kindle/krx/events/LibraryEvent$EventType;

    return-object v0
.end method

.method public getView()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/LibraryEvent;->view:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/amazon/kindle/krx/events/LibraryEvent;->visibleItemCount:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
