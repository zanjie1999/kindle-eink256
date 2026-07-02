.class public final enum Lcom/amazon/kindle/model/content/ContentOwnershipType;
.super Ljava/lang/Enum;
.source "ContentOwnershipType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/ContentOwnershipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum AccountMerge:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum AppMigration:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum BookVault:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum DeviceRegistration:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum KOLL:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum KindleDictionary:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum KindleUnlimited:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum KindleUserGuide:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum PDocs:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum PersonalLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum PhysicalItemPurchase:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum Pottermore:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum PreOrder:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum PrintPlusDigital:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum PublicLibraryLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum PublisherAuthentication:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum Purchase:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum RFFLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum Rental:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum Sample:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum Sharing:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum Subscription:Lcom/amazon/kindle/model/content/ContentOwnershipType;

.field public static final enum Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/4 v1, 0x0

    const-string v2, "Purchase"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Purchase:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 13
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/4 v2, 0x1

    const-string v3, "PublicLibraryLending"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PublicLibraryLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 14
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/4 v3, 0x2

    const-string v4, "PersonalLending"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PersonalLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 15
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/4 v4, 0x3

    const-string v5, "KOLL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->KOLL:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 16
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/4 v5, 0x4

    const-string v6, "KindleUnlimited"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->KindleUnlimited:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/4 v6, 0x5

    const-string v7, "RFFLending"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->RFFLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 18
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/4 v7, 0x6

    const-string v8, "Pottermore"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Pottermore:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 19
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/4 v8, 0x7

    const-string v9, "Sample"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Sample:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 20
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v9, 0x8

    const-string v10, "Rental"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Rental:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 21
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v10, 0x9

    const-string v11, "Subscription"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Subscription:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 22
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v11, 0xa

    const-string v12, "KindleDictionary"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->KindleDictionary:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 23
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v12, 0xb

    const-string v13, "KindleUserGuide"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->KindleUserGuide:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v13, 0xc

    const-string v14, "FreeTrial"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 25
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v14, 0xd

    const-string v15, "Sharing"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Sharing:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v15, 0xe

    const-string v14, "DeviceRegistration"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->DeviceRegistration:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 27
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v14, 0xf

    const-string v15, "BookVault"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->BookVault:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 28
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v15, 0x10

    const-string v14, "PDocs"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PDocs:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 29
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v14, 0x11

    const-string v15, "PhysicalItemPurchase"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PhysicalItemPurchase:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 30
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v15, 0x12

    const-string v14, "AccountMerge"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->AccountMerge:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 31
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v14, 0x13

    const-string v15, "PublisherAuthentication"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PublisherAuthentication:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 32
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v15, 0x14

    const-string v14, "AppMigration"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->AppMigration:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 33
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v14, 0x15

    const-string v15, "PrintPlusDigital"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PrintPlusDigital:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 34
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const-string v15, "PreOrder"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PreOrder:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 35
    new-instance v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const-string v14, "Unknown"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/model/content/ContentOwnershipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v14, 0x18

    new-array v14, v14, [Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 11
    sget-object v15, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Purchase:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PublicLibraryLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PersonalLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->KOLL:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->KindleUnlimited:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->RFFLending:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Pottermore:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Sample:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Rental:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Subscription:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->KindleDictionary:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->KindleUserGuide:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Sharing:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->DeviceRegistration:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->BookVault:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PDocs:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PhysicalItemPurchase:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->AccountMerge:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PublisherAuthentication:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->AppMigration:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PrintPlusDigital:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->PreOrder:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    const/16 v1, 0x17

    aput-object v0, v14, v1

    sput-object v14, Lcom/amazon/kindle/model/content/ContentOwnershipType;->$VALUES:[Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->$VALUES:[Lcom/amazon/kindle/model/content/ContentOwnershipType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/ContentOwnershipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object v0
.end method
