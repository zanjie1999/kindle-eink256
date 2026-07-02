.class public Lcom/amazon/kindle/nln/RecyclerViewScrollStatusChangedEvent;
.super Ljava/lang/Object;
.source "RecyclerViewScrollStatusChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private state:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/amazon/kindle/nln/RecyclerViewScrollStatusChangedEvent;->state:I

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
