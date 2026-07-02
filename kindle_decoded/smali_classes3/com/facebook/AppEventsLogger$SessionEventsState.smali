.class Lcom/facebook/AppEventsLogger$SessionEventsState;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionEventsState"
.end annotation


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private hashedDeviceAndAppId:Ljava/lang/String;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    const/16 v0, 0x3e8

    .line 1046
    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 1049
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 1050
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    .line 1051
    iput-object p3, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->hashedDeviceAndAppId:Ljava/lang/String;

    return-void
.end method

.method private getStringAsByteArray(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1162
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Encoding exception: "

    .line 1165
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V
    .locals 3

    .line 1121
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v0

    const-string v1, "event"

    const-string v2, "CUSTOM_APP_EVENTS"

    .line 1122
    invoke-interface {v0, v1, v2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1124
    iget v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v1, :cond_0

    .line 1125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "num_skipped_events"

    invoke-interface {v0, v1, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1129
    iget-object p2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-object p4, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->hashedDeviceAndAppId:Ljava/lang/String;

    invoke-static {v0, p2, p4, p5}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 1137
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/facebook/AppEventsLogger;->access$1000()Landroid/content/Context;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/facebook/internal/Utility;->setAppEventExtendedDeviceInfoParameters(Lcom/facebook/model/GraphObject;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1142
    :goto_0
    iget-object p2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    const-string p4, "application_package_name"

    invoke-interface {v0, p4, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1144
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    .line 1146
    invoke-virtual {p1}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1148
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1151
    :cond_2
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 1153
    invoke-direct {p0, p3}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getStringAsByteArray(Ljava/lang/String;)[B

    move-result-object p4

    const-string p5, "custom_events_file"

    invoke-virtual {p2, p5, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1154
    invoke-virtual {p1, p3}, Lcom/facebook/Request;->setTag(Ljava/lang/Object;)V

    .line 1156
    :cond_3
    invoke-virtual {p1, p2}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addEvent(Lcom/facebook/AppEventsLogger$AppEvent;)V
    .locals 2

    monitor-enter p0

    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 1058
    iget p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1070
    :try_start_0
    iget-object p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1072
    :cond_0
    iget-object p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 1073
    iput p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .locals 1

    monitor-enter p0

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 1109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public populateRequest(Lcom/facebook/Request;ZZZ)I
    .locals 7

    .line 1081
    monitor-enter p0

    .line 1082
    :try_start_0
    iget v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 1085
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1086
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1088
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1089
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/AppEventsLogger$AppEvent;

    if-nez p2, :cond_1

    .line 1090
    invoke-virtual {v1}, Lcom/facebook/AppEventsLogger$AppEvent;->getIsImplicit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1091
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/AppEventsLogger$AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1095
    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_3

    const/4 p1, 0x0

    .line 1096
    monitor-exit p0

    return p1

    .line 1098
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move v4, p3

    move v5, p4

    .line 1100
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V

    .line 1101
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 1098
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
