.class public final enum Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;
.super Ljava/lang/Enum;
.source "KSDKSettingsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

.field public static final enum TOGGLE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    const/4 v2, 0x0

    const-string v3, "TOGGLE"

    const-string/jumbo v4, "toggle"

    .line 39
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->TOGGLE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    const/4 v2, 0x1

    const-string v3, "RADIO_GROUP"

    const-string/jumbo v4, "radio_group"

    .line 40
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->$VALUES:[Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->$VALUES:[Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->key:Ljava/lang/String;

    return-object v0
.end method
