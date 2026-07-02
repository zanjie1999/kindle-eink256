.class public Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;
.super Ljava/lang/Object;
.source "DBDynamicResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# instance fields
.field public final language:Ljava/lang/String;

.field public final parentASIN:Ljava/lang/String;

.field public final reference:Ljava/lang/String;

.field public final targetOrigin:Ljava/lang/String;

.field public final targetType:Ljava/lang/String;

.field public final timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_0

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 541
    iput-object p1, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    .line 542
    iput-object p2, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    .line 543
    iput-object p3, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->timestamp:Ljava/lang/String;

    .line 544
    iput-object p4, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    .line 545
    iput-object p6, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    .line 546
    iput-object p5, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 567
    :cond_1
    const-class v2, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 569
    :cond_2
    check-cast p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;

    .line 570
    iget-object v2, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 571
    iget-object v2, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 573
    :cond_3
    iget-object v3, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 575
    :cond_4
    iget-object v2, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 576
    iget-object v2, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 578
    :cond_5
    iget-object v3, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 580
    :cond_6
    iget-object v2, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 581
    iget-object v2, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 583
    :cond_7
    iget-object v3, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 585
    :cond_8
    iget-object v2, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 586
    iget-object v2, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v1

    .line 588
    :cond_9
    iget-object v3, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 590
    :cond_a
    iget-object v2, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->timestamp:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 591
    iget-object v2, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->timestamp:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v1

    .line 593
    :cond_b
    iget-object v3, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 595
    :cond_c
    iget-object v2, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 596
    iget-object p1, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 554
    iget-object v3, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 555
    iget-object v3, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 556
    iget-object v3, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 557
    iget-object v2, p0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->timestamp:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method
