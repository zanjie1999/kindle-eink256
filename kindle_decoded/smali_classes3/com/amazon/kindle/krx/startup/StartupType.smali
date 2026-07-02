.class public final enum Lcom/amazon/kindle/krx/startup/StartupType;
.super Ljava/lang/Enum;
.source "StartupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/startup/StartupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/startup/StartupType;

.field public static final enum BW_NOTIFICATION:Lcom/amazon/kindle/krx/startup/StartupType;

.field public static final enum FTUE:Lcom/amazon/kindle/krx/startup/StartupType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FTUE_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

.field public static final enum FTUE_NON_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/amazon/kindle/krx/startup/StartupType;

    const/4 v1, 0x0

    const-string v2, "FTUE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/startup/StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE:Lcom/amazon/kindle/krx/startup/StartupType;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/startup/StartupType;

    const/4 v2, 0x1

    const-string v3, "FTUE_EMPTY_LIBRARY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/startup/StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/startup/StartupType;

    const/4 v3, 0x2

    const-string v4, "FTUE_NON_EMPTY_LIBRARY"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/startup/StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_NON_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/startup/StartupType;

    const/4 v4, 0x3

    const-string v5, "BW_NOTIFICATION"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/startup/StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->BW_NOTIFICATION:Lcom/amazon/kindle/krx/startup/StartupType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/startup/StartupType;

    .line 7
    sget-object v6, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE:Lcom/amazon/kindle/krx/startup/StartupType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_NON_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/startup/StartupType;->$VALUES:[Lcom/amazon/kindle/krx/startup/StartupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/startup/StartupType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/startup/StartupType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/startup/StartupType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->$VALUES:[Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/startup/StartupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/startup/StartupType;

    return-object v0
.end method
