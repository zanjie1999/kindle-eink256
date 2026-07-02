.class public Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
.super Ljava/lang/Object;
.source "ListeningStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/stats/domain/ListeningStatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private asin:Ljava/lang/String;

.field private asinOwned:Ljava/lang/Boolean;

.field private contentDiscoverySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ContentDiscoverySource;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private deliveryType:Lcom/audible/application/stats/integration/DeliveryType;

.field private endTime:Ljava/util/Date;

.field private eventEndPosition:Ljava/lang/Long;

.field private eventStartPosition:Ljava/lang/Long;

.field private eventType:Ljava/lang/String;

.field private idIn:Ljava/lang/String;

.field private lengthOfBook:Ljava/lang/Long;

.field private listeningMode:Ljava/lang/String;

.field private localTimezone:Ljava/util/TimeZone;

.field private narrationSpeed:Ljava/lang/Float;

.field private playingImmersionReading:Ljava/lang/Boolean;

.field private startTime:Ljava/util/Date;

.field private store:Lcom/audible/application/stats/integration/StoreType;

.field private subscriptionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/audible/mobile/stats/domain/ListeningStatsEvent;
    .locals 22

    move-object/from16 v1, p0

    .line 640
    :try_start_0
    new-instance v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    iget-object v3, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->asin:Ljava/lang/String;

    iget-object v4, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->asinOwned:Ljava/lang/Boolean;

    iget-object v5, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->playingImmersionReading:Ljava/lang/Boolean;

    iget-object v6, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->narrationSpeed:Ljava/lang/Float;

    iget-object v7, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->lengthOfBook:Ljava/lang/Long;

    iget-object v8, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->deliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    iget-object v9, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->listeningMode:Ljava/lang/String;

    iget-object v10, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->startTime:Ljava/util/Date;

    iget-object v11, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->endTime:Ljava/util/Date;

    iget-object v12, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->localTimezone:Ljava/util/TimeZone;

    iget-object v13, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->eventType:Ljava/lang/String;

    iget-object v14, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->idIn:Ljava/lang/String;

    iget-object v15, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->context:Landroid/content/Context;

    iget-object v2, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->contentDiscoverySources:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->subscriptionId:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->store:Lcom/audible/application/stats/integration/StoreType;

    move-object/from16 v18, v15

    iget-object v15, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->eventStartPosition:Ljava/lang/Long;

    move-object/from16 v19, v15

    iget-object v15, v1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->eventEndPosition:Ljava/lang/Long;

    move-object/from16 v20, v2

    move-object v2, v0

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v21

    invoke-direct/range {v2 .. v20}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Long;Lcom/audible/application/stats/integration/DeliveryType;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to assemble JSON ListeningStatsEvent, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public withAsin(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->asin:Ljava/lang/String;

    return-object p0
.end method

.method public withAsinOwned(Ljava/lang/Boolean;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->asinOwned:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withContentDiscoverySources(Ljava/util/List;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ContentDiscoverySource;",
            ">;)",
            "Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;"
        }
    .end annotation

    .line 609
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->contentDiscoverySources:Ljava/util/List;

    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public withDeliveryType(Lcom/audible/application/stats/integration/DeliveryType;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->deliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    return-object p0
.end method

.method public withEventEndPosition(Ljava/lang/Long;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->eventEndPosition:Ljava/lang/Long;

    return-object p0
.end method

.method public withEventStartPosition(Ljava/lang/Long;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->eventStartPosition:Ljava/lang/Long;

    return-object p0
.end method

.method public withEventType(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public withID(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->idIn:Ljava/lang/String;

    return-object p0
.end method

.method public withLengthOfBook(Ljava/lang/Long;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->lengthOfBook:Ljava/lang/Long;

    return-object p0
.end method

.method public withListeningEndTime(Ljava/util/Date;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->endTime:Ljava/util/Date;

    return-object p0
.end method

.method public withListeningMode(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->listeningMode:Ljava/lang/String;

    return-object p0
.end method

.method public withListeningStartTime(Ljava/util/Date;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->startTime:Ljava/util/Date;

    return-object p0
.end method

.method public withLocalTimezone(Ljava/util/TimeZone;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->localTimezone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public withNarrationSpeed(Ljava/lang/Float;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->narrationSpeed:Ljava/lang/Float;

    return-object p0
.end method

.method public withPlayingImmersionReading(Ljava/lang/Boolean;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->playingImmersionReading:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withStore(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->store:Lcom/audible/application/stats/integration/StoreType;

    return-object p0
.end method

.method public withSubscriptionId(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->subscriptionId:Ljava/lang/String;

    return-object p0
.end method
