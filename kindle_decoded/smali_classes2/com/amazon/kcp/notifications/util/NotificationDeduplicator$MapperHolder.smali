.class Lcom/amazon/kcp/notifications/util/NotificationDeduplicator$MapperHolder;
.super Ljava/lang/Object;
.source "NotificationDeduplicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/notifications/util/NotificationDeduplicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapperHolder"
.end annotation


# static fields
.field static final MAPPER:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    sput-object v0, Lcom/amazon/kcp/notifications/util/NotificationDeduplicator$MapperHolder;->MAPPER:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
