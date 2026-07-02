.class public final Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;
.super Ljava/lang/Object;
.source "DynamicConfiguration.java"


# static fields
.field private static final DEFAULT_STORAGE:Lcom/amazon/messaging/odot/webservices/transportdto/DefaultStorage;

.field private static final TAG:Ljava/lang/String;

.field private static sStorage:Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfigurationStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/DefaultStorage;

    invoke-direct {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/DefaultStorage;-><init>()V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;->DEFAULT_STORAGE:Lcom/amazon/messaging/odot/webservices/transportdto/DefaultStorage;

    .line 16
    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;->sStorage:Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfigurationStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;->sStorage:Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfigurationStorage;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfigurationStorage;->getNum(Ljava/lang/String;I)I

    return p1
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfiguration;->sStorage:Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfigurationStorage;

    invoke-virtual {v0, p0}, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfigurationStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method
