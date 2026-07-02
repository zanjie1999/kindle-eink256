.class public final enum Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;
.super Ljava/lang/Enum;
.source "DCPComponentInformationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DCPComponentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

.field public static final enum DCPComponentTypeMetrics:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

.field public static final enum DCPComponentTypeOTA:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;


# instance fields
.field private mAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "DCPComponentTypeOTA"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->DCPComponentTypeOTA:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    .line 27
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    const/4 v3, 0x1

    const-string v4, "DCPComponentTypeMetrics"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->DCPComponentTypeMetrics:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    .line 23
    sget-object v4, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->DCPComponentTypeOTA:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->$VALUES:[Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->mAction:Ljava/lang/String;

    return-object v0
.end method
