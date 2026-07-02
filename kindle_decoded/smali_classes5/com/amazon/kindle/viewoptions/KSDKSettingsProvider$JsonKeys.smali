.class public final enum Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;
.super Ljava/lang/Enum;
.source "KSDKSettingsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsonKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

.field public static final enum DISPLAY:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

.field public static final enum DISPLAY_TYPE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

.field public static final enum IDENTIFIER:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

.field public static final enum PRIORITY:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

.field public static final enum TITLE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/4 v2, 0x0

    const-string v3, "IDENTIFIER"

    const-string v4, "identifier"

    .line 23
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->IDENTIFIER:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/4 v2, 0x1

    const-string v3, "PRIORITY"

    const-string/jumbo v4, "priority"

    .line 24
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->PRIORITY:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/4 v2, 0x2

    const-string v3, "DISPLAY"

    const-string v4, "display"

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->DISPLAY:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/4 v2, 0x3

    const-string v3, "DISPLAY_TYPE"

    const-string/jumbo v4, "type"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->DISPLAY_TYPE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/4 v2, 0x4

    const-string v3, "DISABLED_DISPLAY"

    const-string v4, "disabledDisplay"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/4 v2, 0x5

    const-string v3, "TITLE"

    const-string/jumbo v4, "title"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->TITLE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/4 v2, 0x6

    const-string v3, "SUBTITLE"

    const-string/jumbo v4, "subtitle"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/4 v2, 0x7

    const-string v3, "BUTTON_IMAGES_SELECTED"

    const-string v4, "buttonImagesSelected"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/16 v2, 0x8

    const-string v3, "BUTTON_IMAGES_UNSELECTED"

    const-string v4, "buttonImagesUnselected"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/16 v2, 0x9

    const-string v3, "BUTTON_TEXT"

    const-string v4, "buttonText"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    const/16 v2, 0xa

    const-string v3, "LAYOUT_IDS"

    const-string v4, "layoutIds"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->$VALUES:[Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;
    .locals 1

    const-class v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->$VALUES:[Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-virtual {v0}, [Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->key:Ljava/lang/String;

    return-object v0
.end method
