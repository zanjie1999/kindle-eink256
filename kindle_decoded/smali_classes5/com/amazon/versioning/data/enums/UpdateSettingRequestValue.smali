.class public final enum Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;
.super Ljava/lang/Enum;
.source "UpdateSettingRequestValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

.field public static final enum TURN_OFF:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

.field public static final enum TURN_ON:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;


# instance fields
.field private final boolValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TURN_ON"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_ON:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    .line 9
    new-instance v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    const-string v3, "TURN_OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_OFF:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    .line 7
    sget-object v4, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_ON:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    sput-object v3, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->$VALUES:[Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-boolean p3, p0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->boolValue:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    return-object p0
.end method

.method public static values()[Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->$VALUES:[Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {v0}, [Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->boolValue:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
