.class public Lcom/amazon/messaging/odot/webservices/transportdto/DefaultStorage;
.super Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfigurationStorage;
.source "DefaultStorage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/DefaultStorage;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/DefaultStorage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/DynamicConfigurationStorage;-><init>()V

    return-void
.end method


# virtual methods
.method public getNum(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
