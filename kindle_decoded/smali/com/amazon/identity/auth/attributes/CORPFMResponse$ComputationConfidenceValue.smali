.class public final enum Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/attributes/CORPFMResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComputationConfidenceValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

.field public static final enum CUSTOMER_BASED_GUESS:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

.field public static final enum CUSTOMER_PROVIDED:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

.field public static final enum DEVICE_BASED_GUESS:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

.field private static final LOOKUP_BY_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsGuess:Z

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    const-string v1, "CUSTOMER_PROVIDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_PROVIDED:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    const-string v1, "CUSTOMER_BASED_GUESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v3}, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_BASED_GUESS:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    const/4 v1, 0x2

    const-string v4, "DEVICE_BASED_GUESS"

    invoke-direct {v0, v4, v1, v4, v3}, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->DEVICE_BASED_GUESS:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 12
    sget-object v5, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_PROVIDED:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    aput-object v5, v4, v2

    sget-object v5, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->CUSTOMER_BASED_GUESS:Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    aput-object v5, v4, v3

    aput-object v0, v4, v1

    sput-object v4, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->$VALUES:[Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->LOOKUP_BY_VALUE:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->values()[Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 24
    sget-object v4, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->LOOKUP_BY_VALUE:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->mValue:Ljava/lang/String;

    .line 34
    iput-boolean p4, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->mIsGuess:Z

    return-void
.end method

.method public static parseFromValue(Ljava/lang/String;Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;)Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->LOOKUP_BY_VALUE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->$VALUES:[Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isGuess()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/amazon/identity/auth/attributes/CORPFMResponse$ComputationConfidenceValue;->mIsGuess:Z

    return v0
.end method
