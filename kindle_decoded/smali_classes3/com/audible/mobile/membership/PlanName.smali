.class public final enum Lcom/audible/mobile/membership/PlanName;
.super Ljava/lang/Enum;
.source "PlanName.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/membership/PlanName;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/membership/PlanName;

.field public static final enum AMAZON_ENGLISH:Lcom/audible/mobile/membership/PlanName;

.field public static final enum AYCE:Lcom/audible/mobile/membership/PlanName;

.field public static final enum AYCE_ROMANCE:Lcom/audible/mobile/membership/PlanName;

.field public static final enum COMPLIMENTARY_ORIGINAL_MEMBER_BENEFIT:Lcom/audible/mobile/membership/PlanName;

.field public static final enum ENTERPRISE:Lcom/audible/mobile/membership/PlanName;

.field public static final enum RADIO:Lcom/audible/mobile/membership/PlanName;

.field public static final enum RODIZIO:Lcom/audible/mobile/membership/PlanName;

.field public static final enum RODIZIO_FREE_BASIC:Lcom/audible/mobile/membership/PlanName;

.field public static final enum SPECIAL_BENEFITS:Lcom/audible/mobile/membership/PlanName;

.field public static final enum UNIVERSAL:Lcom/audible/mobile/membership/PlanName;

.field public static final enum UNKNOWN:Lcom/audible/mobile/membership/PlanName;

.field public static final enum US_MINERVA:Lcom/audible/mobile/membership/PlanName;

.field private static final serialVersionUID:J = -0x283bcfcb9e5f4fL


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 19
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/4 v1, 0x0

    const-string v2, "RODIZIO"

    const-string v3, "Rodizio"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->RODIZIO:Lcom/audible/mobile/membership/PlanName;

    .line 20
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/4 v2, 0x1

    const-string v3, "RODIZIO_FREE_BASIC"

    const-string v4, "RodizioFreeBasic"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->RODIZIO_FREE_BASIC:Lcom/audible/mobile/membership/PlanName;

    .line 21
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/4 v3, 0x2

    const-string v4, "AYCE_ROMANCE"

    const-string v5, "AyceRomance"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->AYCE_ROMANCE:Lcom/audible/mobile/membership/PlanName;

    .line 22
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/4 v4, 0x3

    const-string v5, "ENTERPRISE"

    const-string v6, "Enterprise"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->ENTERPRISE:Lcom/audible/mobile/membership/PlanName;

    .line 23
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/4 v5, 0x4

    const-string v6, "RADIO"

    const-string v7, "Radio"

    invoke-direct {v0, v6, v5, v7}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->RADIO:Lcom/audible/mobile/membership/PlanName;

    .line 24
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/4 v6, 0x5

    const-string v7, "AMAZON_ENGLISH"

    const-string v8, "AmazonEnglish"

    invoke-direct {v0, v7, v6, v8}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->AMAZON_ENGLISH:Lcom/audible/mobile/membership/PlanName;

    .line 25
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/4 v7, 0x6

    const-string v8, "AYCE"

    const-string v9, "AllYouCanEat"

    invoke-direct {v0, v8, v7, v9}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->AYCE:Lcom/audible/mobile/membership/PlanName;

    .line 26
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/4 v8, 0x7

    const-string v9, "COMPLIMENTARY_ORIGINAL_MEMBER_BENEFIT"

    const-string v10, "ComplimentaryOriginalMemberBenefit"

    invoke-direct {v0, v9, v8, v10}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->COMPLIMENTARY_ORIGINAL_MEMBER_BENEFIT:Lcom/audible/mobile/membership/PlanName;

    .line 27
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/16 v9, 0x8

    const-string v10, "SPECIAL_BENEFITS"

    const-string v11, "SpecialBenefit"

    invoke-direct {v0, v10, v9, v11}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->SPECIAL_BENEFITS:Lcom/audible/mobile/membership/PlanName;

    .line 28
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/16 v10, 0x9

    const-string v11, "UNIVERSAL"

    const-string v12, "Universal"

    invoke-direct {v0, v11, v10, v12}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->UNIVERSAL:Lcom/audible/mobile/membership/PlanName;

    .line 29
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/16 v11, 0xa

    const-string v12, "US_MINERVA"

    const-string v13, "US Minerva"

    invoke-direct {v0, v12, v11, v13}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->US_MINERVA:Lcom/audible/mobile/membership/PlanName;

    .line 30
    new-instance v0, Lcom/audible/mobile/membership/PlanName;

    const/16 v12, 0xb

    const-string v13, "UNKNOWN"

    invoke-direct {v0, v13, v12, v13}, Lcom/audible/mobile/membership/PlanName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/membership/PlanName;->UNKNOWN:Lcom/audible/mobile/membership/PlanName;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/audible/mobile/membership/PlanName;

    .line 17
    sget-object v14, Lcom/audible/mobile/membership/PlanName;->RODIZIO:Lcom/audible/mobile/membership/PlanName;

    aput-object v14, v13, v1

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->RODIZIO_FREE_BASIC:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->AYCE_ROMANCE:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v3

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->ENTERPRISE:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v4

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->RADIO:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v5

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->AMAZON_ENGLISH:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v6

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->AYCE:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v7

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->COMPLIMENTARY_ORIGINAL_MEMBER_BENEFIT:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v8

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->SPECIAL_BENEFITS:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v9

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->UNIVERSAL:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v10

    sget-object v1, Lcom/audible/mobile/membership/PlanName;->US_MINERVA:Lcom/audible/mobile/membership/PlanName;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/audible/mobile/membership/PlanName;->$VALUES:[Lcom/audible/mobile/membership/PlanName;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/audible/mobile/membership/PlanName;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/audible/mobile/membership/PlanName;
    .locals 5

    if-nez p0, :cond_0

    .line 61
    sget-object p0, Lcom/audible/mobile/membership/PlanName;->UNKNOWN:Lcom/audible/mobile/membership/PlanName;

    return-object p0

    .line 64
    :cond_0
    invoke-static {}, Lcom/audible/mobile/membership/PlanName;->values()[Lcom/audible/mobile/membership/PlanName;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 65
    invoke-virtual {v3}, Lcom/audible/mobile/membership/PlanName;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_2
    sget-object p0, Lcom/audible/mobile/membership/PlanName;->UNKNOWN:Lcom/audible/mobile/membership/PlanName;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/membership/PlanName;
    .locals 1

    .line 17
    const-class v0, Lcom/audible/mobile/membership/PlanName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/membership/PlanName;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/membership/PlanName;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/mobile/membership/PlanName;->$VALUES:[Lcom/audible/mobile/membership/PlanName;

    invoke-virtual {v0}, [Lcom/audible/mobile/membership/PlanName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/membership/PlanName;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/audible/mobile/membership/PlanName;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlanName{value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/membership/PlanName;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
