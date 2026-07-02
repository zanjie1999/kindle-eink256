.class Lcom/localytics/android/LocalyticsSession$SessionHandler$4;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocalyticsSession$SessionHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$clv:Ljava/lang/Long;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 0

    .line 1363
    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iput-object p2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    iput-object p4, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$clv:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1366
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/localytics/android/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    iget-object v3, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$clv:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1380
    :cond_1
    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    .line 1381
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    .line 1382
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    .line 1383
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    .line 1384
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    .line 1385
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    .line 1386
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    .line 1387
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    .line 1388
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    .line 1389
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1391
    :cond_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1392
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1394
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    :cond_3
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1398
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    :cond_4
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1402
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    :cond_5
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1406
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    :cond_6
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1410
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    :cond_7
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1414
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    :cond_8
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1418
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    :cond_9
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1422
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_a
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1426
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    :cond_b
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1430
    sget-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->open(ZLjava/util/Map;)V

    .line 1439
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iget-object v2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$event:Ljava/lang/String;

    iget-object v3, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    iget-object v4, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->val$clv:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3, v4}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    .line 1440
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$4;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->close(Ljava/util/Map;)V

    :goto_1
    return-void
.end method
