.class public Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;
.super Ljava/lang/Object;
.source "AnnotationsManagerEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;
    }
.end annotation


# instance fields
.field private final bookId:Ljava/lang/String;

.field private final eventType:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

.field private final lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

.field private final mrpr:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;Ljava/lang/String;Lcom/amazon/kindle/model/content/LastPageRead;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->eventType:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    .line 27
    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->bookId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    .line 29
    iput p4, p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->mrpr:I

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->eventType:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    return-object v0
.end method

.method public getLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->lastPageRead:Lcom/amazon/kindle/model/content/LastPageRead;

    return-object v0
.end method

.method public getMrpr()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;->mrpr:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
