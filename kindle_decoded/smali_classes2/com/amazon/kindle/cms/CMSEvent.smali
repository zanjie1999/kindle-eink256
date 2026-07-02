.class public Lcom/amazon/kindle/cms/CMSEvent;
.super Ljava/lang/Object;
.source "CMSEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/CMSEvent$Action;
    }
.end annotation


# instance fields
.field final action:Lcom/amazon/kindle/cms/CMSEvent$Action;

.field final addToCarousel:I

.field final contentId:Ljava/lang/String;

.field eventId:J

.field final userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/CMSEvent$Action;Z)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/cms/CMSEvent;->userId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/amazon/kindle/cms/CMSEvent;->contentId:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/amazon/kindle/cms/CMSEvent;->action:Lcom/amazon/kindle/cms/CMSEvent$Action;

    .line 51
    iput p4, p0, Lcom/amazon/kindle/cms/CMSEvent;->addToCarousel:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 69
    instance-of v0, p1, Lcom/amazon/kindle/cms/CMSEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lcom/amazon/kindle/cms/CMSEvent;

    .line 71
    iget-wide v2, p0, Lcom/amazon/kindle/cms/CMSEvent;->eventId:J

    iget-wide v4, p1, Lcom/amazon/kindle/cms/CMSEvent;->eventId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSEvent;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kindle/cms/CMSEvent;->userId:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSEvent;->contentId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/kindle/cms/CMSEvent;->contentId:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSEvent;->action:Lcom/amazon/kindle/cms/CMSEvent$Action;

    iget-object v2, p1, Lcom/amazon/kindle/cms/CMSEvent;->action:Lcom/amazon/kindle/cms/CMSEvent$Action;

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/amazon/kindle/cms/CMSEvent;->addToCarousel:I

    iget p1, p1, Lcom/amazon/kindle/cms/CMSEvent;->addToCarousel:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 84
    iget-wide v0, p0, Lcom/amazon/kindle/cms/CMSEvent;->eventId:J

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 85
    iget-object v2, p0, Lcom/amazon/kindle/cms/CMSEvent;->contentId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 86
    iget-object v2, p0, Lcom/amazon/kindle/cms/CMSEvent;->userId:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 87
    iget-object v2, p0, Lcom/amazon/kindle/cms/CMSEvent;->action:Lcom/amazon/kindle/cms/CMSEvent$Action;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 88
    iget v0, p0, Lcom/amazon/kindle/cms/CMSEvent;->addToCarousel:I

    add-int/2addr v1, v0

    return v1
.end method
