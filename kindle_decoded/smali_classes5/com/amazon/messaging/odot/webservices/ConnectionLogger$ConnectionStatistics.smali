.class Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;
.super Ljava/lang/Object;
.source "ConnectionLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/messaging/odot/webservices/ConnectionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStatistics"
.end annotation


# instance fields
.field public connectionStartNanos:J

.field public connectionState:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;->SettingUp:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;->connectionState:Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/messaging/odot/webservices/ConnectionLogger$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionLogger$ConnectionStatistics;-><init>()V

    return-void
.end method
