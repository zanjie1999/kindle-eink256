.class public abstract Lcom/audible/hushpuppy/common/event/relationship/EbookAsinEvent;
.super Ljava/lang/Object;
.source "EbookAsinEvent.java"


# instance fields
.field private final ebookAsin:Lcom/audible/mobile/domain/Asin;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/relationship/EbookAsinEvent;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/event/relationship/EbookAsinEvent;

    .line 46
    iget-object v2, p0, Lcom/audible/hushpuppy/common/event/relationship/EbookAsinEvent;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/event/relationship/EbookAsinEvent;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/relationship/EbookAsinEvent;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EbookAsinEvent{ebookAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/relationship/EbookAsinEvent;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
