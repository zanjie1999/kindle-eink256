.class public Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;
.super Ljava/lang/Object;
.source "ResumeWidgetUpdateEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;->type:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
