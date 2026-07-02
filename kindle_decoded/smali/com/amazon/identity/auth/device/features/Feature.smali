.class public abstract enum Lcom/amazon/identity/auth/device/features/Feature;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/features/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum DSNWhenNotRegistered:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum DirectedIdSupported:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum IsolateApplication:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum OverrideDeviceAttributes:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum PandaRegistration:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum RegistrationViaAuthToken:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum SecondaryRegistrationUsingPanda:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum SplitRegistration:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum SplitRegistrationWithDirectedId:Lcom/amazon/identity/auth/device/features/Feature;

.field public static final enum UseDeviceLocaleAsLanguagePreference:Lcom/amazon/identity/auth/device/features/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$1;

    const/4 v1, 0x0

    const-string v2, "OverrideDeviceAttributes"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/features/Feature$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->OverrideDeviceAttributes:Lcom/amazon/identity/auth/device/features/Feature;

    .line 39
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$2;

    const/4 v2, 0x1

    const-string v3, "DSNWhenNotRegistered"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/features/Feature$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->DSNWhenNotRegistered:Lcom/amazon/identity/auth/device/features/Feature;

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$3;

    const/4 v3, 0x2

    const-string v4, "PandaRegistration"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/features/Feature$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->PandaRegistration:Lcom/amazon/identity/auth/device/features/Feature;

    .line 83
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$4;

    const/4 v4, 0x3

    const-string v5, "SplitRegistration"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/device/features/Feature$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->SplitRegistration:Lcom/amazon/identity/auth/device/features/Feature;

    .line 107
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$5;

    const/4 v5, 0x4

    const-string v6, "DirectedIdSupported"

    invoke-direct {v0, v6, v5}, Lcom/amazon/identity/auth/device/features/Feature$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->DirectedIdSupported:Lcom/amazon/identity/auth/device/features/Feature;

    .line 119
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$6;

    const/4 v6, 0x5

    const-string v7, "SplitRegistrationWithDirectedId"

    invoke-direct {v0, v7, v6}, Lcom/amazon/identity/auth/device/features/Feature$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->SplitRegistrationWithDirectedId:Lcom/amazon/identity/auth/device/features/Feature;

    .line 135
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$7;

    const/4 v7, 0x6

    const-string v8, "RegistrationViaAuthToken"

    invoke-direct {v0, v8, v7}, Lcom/amazon/identity/auth/device/features/Feature$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->RegistrationViaAuthToken:Lcom/amazon/identity/auth/device/features/Feature;

    .line 152
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$8;

    const/4 v8, 0x7

    const-string v9, "UseDeviceLocaleAsLanguagePreference"

    invoke-direct {v0, v9, v8}, Lcom/amazon/identity/auth/device/features/Feature$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->UseDeviceLocaleAsLanguagePreference:Lcom/amazon/identity/auth/device/features/Feature;

    .line 161
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$9;

    const/16 v9, 0x8

    const-string v10, "IsolateApplication"

    invoke-direct {v0, v10, v9}, Lcom/amazon/identity/auth/device/features/Feature$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->IsolateApplication:Lcom/amazon/identity/auth/device/features/Feature;

    .line 170
    new-instance v0, Lcom/amazon/identity/auth/device/features/Feature$10;

    const/16 v10, 0x9

    const-string v11, "SecondaryRegistrationUsingPanda"

    invoke-direct {v0, v11, v10}, Lcom/amazon/identity/auth/device/features/Feature$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/features/Feature;->SecondaryRegistrationUsingPanda:Lcom/amazon/identity/auth/device/features/Feature;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/identity/auth/device/features/Feature;

    .line 16
    sget-object v12, Lcom/amazon/identity/auth/device/features/Feature;->OverrideDeviceAttributes:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->DSNWhenNotRegistered:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->PandaRegistration:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->SplitRegistration:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->DirectedIdSupported:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->SplitRegistrationWithDirectedId:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->RegistrationViaAuthToken:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->UseDeviceLocaleAsLanguagePreference:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->IsolateApplication:Lcom/amazon/identity/auth/device/features/Feature;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/identity/auth/device/features/Feature;->$VALUES:[Lcom/amazon/identity/auth/device/features/Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/features/Feature$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/features/Feature;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/features/Feature;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/identity/auth/device/features/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/features/Feature;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/features/Feature;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/features/Feature;->$VALUES:[Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/features/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/features/Feature;

    return-object v0
.end method


# virtual methods
.method public abstract fetchValue(Landroid/content/Context;)Z
.end method

.method public fetchValueNoCache(Landroid/content/Context;)Z
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/features/Feature;->fetchValue(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
