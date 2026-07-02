.class public final enum Lcom/amazon/kcp/application/AppConfigRequest$Item;
.super Ljava/lang/Enum;
.source "AppConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AppConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/AppConfigRequest$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/AppConfigRequest$Item;

.field public static final enum AUTH_PORTALS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

.field public static final enum CAPABILITIES:Lcom/amazon/kcp/application/AppConfigRequest$Item;

.field public static final enum DCP_SETTINGS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

.field public static final enum FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/AppConfigRequest$Item;

.field public static final enum KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD:Lcom/amazon/kcp/application/AppConfigRequest$Item;

.field public static final enum MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/AppConfigRequest$Item;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 50
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    const/4 v1, 0x0

    const-string v2, "MIN_SOFTWARE_VERSION"

    const-string/jumbo v3, "minSoftwareVersion"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/application/AppConfigRequest$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    .line 51
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    const/4 v2, 0x1

    const-string v3, "AUTH_PORTALS"

    const-string v4, "authPortalMappings"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/application/AppConfigRequest$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->AUTH_PORTALS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    .line 52
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    const/4 v3, 0x2

    const-string v4, "FTUE_LOADING_SCREEN"

    const-string v5, "disableFTUELoadingScreen"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/application/AppConfigRequest$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    .line 53
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    const/4 v4, 0x3

    const-string v5, "DCP_SETTINGS"

    const-string v6, "dcpSettings"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/application/AppConfigRequest$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->DCP_SETTINGS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    .line 54
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    const/4 v5, 0x4

    const-string v6, "CAPABILITIES"

    const-string v7, "capabilities"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/application/AppConfigRequest$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->CAPABILITIES:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    .line 55
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    const/4 v6, 0x5

    const-string v7, "KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD"

    const-string v8, "kfaToKFCMigrationNotificationPeriodInDays"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/application/AppConfigRequest$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kcp/application/AppConfigRequest$Item;

    .line 49
    sget-object v8, Lcom/amazon/kcp/application/AppConfigRequest$Item;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->AUTH_PORTALS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->DCP_SETTINGS:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kcp/application/AppConfigRequest$Item;->CAPABILITIES:Lcom/amazon/kcp/application/AppConfigRequest$Item;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kcp/application/AppConfigRequest$Item;->$VALUES:[Lcom/amazon/kcp/application/AppConfigRequest$Item;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/AppConfigRequest$Item;
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/AppConfigRequest$Item;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/AppConfigRequest$Item;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->$VALUES:[Lcom/amazon/kcp/application/AppConfigRequest$Item;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/AppConfigRequest$Item;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/AppConfigRequest$Item;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/application/AppConfigRequest$Item;->key:Ljava/lang/String;

    return-object v0
.end method
