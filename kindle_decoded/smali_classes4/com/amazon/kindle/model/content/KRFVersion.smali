.class public final enum Lcom/amazon/kindle/model/content/KRFVersion;
.super Ljava/lang/Enum;
.source "KRFVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/KRFVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/KRFVersion;

.field public static final enum KRF4:Lcom/amazon/kindle/model/content/KRFVersion;

.field public static final enum KRF5:Lcom/amazon/kindle/model/content/KRFVersion;

.field public static final enum NONE:Lcom/amazon/kindle/model/content/KRFVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/amazon/kindle/model/content/KRFVersion;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/model/content/KRFVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/KRFVersion;->NONE:Lcom/amazon/kindle/model/content/KRFVersion;

    .line 17
    new-instance v0, Lcom/amazon/kindle/model/content/KRFVersion;

    const/4 v2, 0x1

    const-string v3, "KRF4"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/model/content/KRFVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/KRFVersion;->KRF4:Lcom/amazon/kindle/model/content/KRFVersion;

    .line 18
    new-instance v0, Lcom/amazon/kindle/model/content/KRFVersion;

    const/4 v3, 0x2

    const-string v4, "KRF5"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/model/content/KRFVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/KRFVersion;->KRF5:Lcom/amazon/kindle/model/content/KRFVersion;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/model/content/KRFVersion;

    .line 15
    sget-object v5, Lcom/amazon/kindle/model/content/KRFVersion;->NONE:Lcom/amazon/kindle/model/content/KRFVersion;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/model/content/KRFVersion;->KRF4:Lcom/amazon/kindle/model/content/KRFVersion;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/model/content/KRFVersion;->$VALUES:[Lcom/amazon/kindle/model/content/KRFVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/KRFVersion;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/model/content/KRFVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/KRFVersion;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/KRFVersion;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/model/content/KRFVersion;->$VALUES:[Lcom/amazon/kindle/model/content/KRFVersion;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/KRFVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/KRFVersion;

    return-object v0
.end method
