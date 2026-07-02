.class public final enum Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;
.super Ljava/lang/Enum;
.source "AaSettingDisplayBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuildType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum CHECKABLE_RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum CHECKBOX_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum CUSTOM:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum DISCLOSURE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum RADIO_GROUP_TEXT:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum SLIDER:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

.field public static final enum TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/4 v2, 0x0

    const-string v3, "TOGGLE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/4 v2, 0x1

    const-string v3, "CUSTOM"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CUSTOM:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/4 v2, 0x2

    const-string v3, "SLIDER"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->SLIDER:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/4 v2, 0x3

    const-string v3, "RADIO_GROUP"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/4 v2, 0x4

    const-string v3, "RADIO_GROUP_TEXT"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP_TEXT:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/4 v2, 0x5

    const-string v3, "DISCLOSURE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->DISCLOSURE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/4 v2, 0x6

    const-string v3, "MESSAGE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/4 v2, 0x7

    const-string v3, "CHECKABLE_RADIO_GROUP"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CHECKABLE_RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    const/16 v2, 0x8

    const-string v3, "CHECKBOX_GROUP"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CHECKBOX_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->$VALUES:[Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->$VALUES:[Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    return-object v0
.end method
