.class public Lcom/amazon/kindle/events/KRIFCDOnClickEvent;
.super Ljava/lang/Object;
.source "KRIFCDOnClickEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field private annotationType:I

.field private publisher:Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->publisher:Lcom/amazon/kindle/listeners/KRIFBookContentDecorationEventListener;

    .line 18
    iput-object p2, p0, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 19
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->annotationType:I

    return-void
.end method


# virtual methods
.method public getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGHL()Z
    .locals 2

    .line 55
    iget v0, p0, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->annotationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighlight()Z
    .locals 2

    .line 47
    iget v0, p0, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->annotationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNote()Z
    .locals 2

    .line 63
    iget v0, p0, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->annotationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
