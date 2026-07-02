.class public Lcom/amazon/kindle/krx/events/SelectionEvent;
.super Ljava/lang/Object;
.source "SelectionEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;
    }
.end annotation


# instance fields
.field private final bookId:Ljava/lang/String;

.field private final selection:Lcom/amazon/kindle/krx/content/IContentSelection;

.field private final type:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/SelectionEvent;->selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    .line 35
    iput-object p3, p0, Lcom/amazon/kindle/krx/events/SelectionEvent;->type:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/SelectionEvent;->bookId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/SelectionEvent;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Lcom/amazon/kindle/krx/content/IContentSelection;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/SelectionEvent;->selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/SelectionEvent;->type:Lcom/amazon/kindle/krx/events/SelectionEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
